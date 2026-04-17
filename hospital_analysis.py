import pandas as pd
import matplotlib.pyplot as plt

df = pd.read_csv("patients.csv")
print(df.head())

disease_freq = df['disease'].value_counts()
print(disease_freq)

print(df['treatment_cost'].describe())
print(df.groupby('disease')['treatment_cost'].mean())

doctor_group = df.groupby('doctor').agg(
    Total=('patient_id', 'count'),
    Avg_Cost=('treatment_cost', 'mean'),
    Revenue=('treatment_cost', 'sum')
).sort_values('Total', ascending=False)
print(doctor_group)

fig, axes = plt.subplots(1, 2, figsize=(12, 5))
axes[0].pie(disease_freq.values, labels=disease_freq.index, autopct='%1.1f%%',
            colors=['#FF6B6B','#4ECDC4','#45B7D1','#96CEB4'], startangle=90)
axes[0].set_title('Disease Distribution')

doctors = doctor_group.index.tolist()
counts = doctor_group['Total'].tolist()
axes[1].bar(doctors, counts, color=['#2196F3','#FF9800','#4CAF50'])
axes[1].set_title('Doctor Workload')
axes[1].set_ylabel('Number of Patients')
for i, v in enumerate(counts):
    axes[1].text(i, v + 0.2, str(int(v)), ha='center', fontweight='bold')

plt.tight_layout()
plt.savefig('charts.png', dpi=150, bbox_inches='tight')
plt.show()
