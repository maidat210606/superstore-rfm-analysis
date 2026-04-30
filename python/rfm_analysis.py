import pandas as pd
import matplotlib.pyplot as plt
import seaborn as sns
from datetime import datetime

# Load trực tiếp từ CSV
df = pd.read_csv('../Sample - Superstore.csv', encoding='latin1')

# Kiểm tra
print("Shape:", df.shape)
print("\nColumns:", df.columns.tolist())
print("\nHead:")
df.head()|