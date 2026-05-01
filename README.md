\# 📊 Superstore RFM Analysis



A production-ready customer segmentation project analyzing 9,994 retail

orders using RFM methodology to drive data-informed marketing strategy.

Built as a portfolio project to demonstrate end-to-end data analytics skills.



\---



\## Project Overview



| Detail | Info |

|--------|------|

| \*\*Dataset\*\* | Superstore Sales (Kaggle) |

| \*\*Rows\*\* | 9,994 transactions |

| \*\*Period\*\* | 2014 – 2017 |

| \*\*Goal\*\* | Segment customers by purchase behavior |



\---



\## Tech Stack



| Tool | Purpose |

|------|---------|

| \*\*SQL Server\*\* | Data import, cleaning, exploration |

| \*\*Python\*\* (pandas, seaborn, matplotlib) | EDA, RFM scoring, visualization |

| \*\*Power BI\*\* | Interactive dashboard |

| \*\*GitHub\*\* | Version control \& portfolio showcase |



\---



\## Project Structure

superstore-rfm-analysis/

├── sql/

│   ├── 01\_data\_cleaning.sql     # NULL checks, duplicate detection

│   └── 02\_exploration.sql       # Top products, revenue by region/category

├── python/

│   └── rfm\_analysis.ipynb       # EDA, RFM scoring, segmentation

├── dashboard/

│   ├── chart\_category\_sales.png

│   ├── chart\_region\_sales.png

│   ├── chart\_rfm\_segment.png

│   └── chart\_rfm\_revenue.png

└── README.md

\---



\## Methodology



\### Step 1 — Data Cleaning (SQL)

\- Checked NULL values across all key columns

\- Detected duplicate Order ID + Product ID pairs

\- Validated Sales and Profit value ranges

\- Confirmed zero records with negative Sales



\### Step 2 — Exploratory Data Analysis (Python)

\- Distribution of Sales, Profit, and Discount

\- Revenue breakdown by Category and Region

\- Monthly sales trend analysis



\### Step 3 — RFM Scoring (Python)

Each customer is scored across three dimensions:



| Dimension | Definition |

|-----------|-----------|

| \*\*Recency (R)\*\* | Days since last purchase |

| \*\*Frequency (F)\*\* | Number of unique orders |

| \*\*Monetary (M)\*\* | Total spend |



Scores are assigned on a 1–4 scale using quartile ranking.



\### Step 4 — Customer Segmentation

```python

def segment(row):

&#x20;   r, f, m = int(row\['R\_score']), int(row\['F\_score']), int(row\['M\_score'])

&#x20;   if r >= 3 and f >= 3 and m >= 3:

&#x20;       return 'Champions'

&#x20;   elif r >= 3 and f >= 2:

&#x20;       return 'Loyal'

&#x20;   elif r >= 3 and f == 1:

&#x20;       return 'New Customers'

&#x20;   elif r == 2 and f >= 2:

&#x20;       return 'At Risk'

&#x20;   else:

&#x20;       return 'Lost'

```



\---



\## Results



\### Customer Segments

| Segment | Count | Action |

|---------|-------|--------|

| 🏆 Champions | 176 | Reward \& retain |

| 💙 Loyal | 149 | Upsell opportunities |

| ⚠️ At Risk | 165 | Re-engagement campaigns |

| 🆕 New Customers | 72 | Onboarding \& nurturing |

| ❌ Lost | 231 | Win-back campaigns |



\### Key Insights

\- \*\*Technology\*\* leads revenue at \~$836K across all categories

\- \*\*West\*\* is the strongest region at \~$725K

\- \*\*231 Lost customers\*\* represent the largest segment — immediate win-back strategy needed

\- \*\*Champions (176)\*\* generate disproportionately high revenue despite smaller count



\---



\## How to Run



\### SQL

1\. Restore `Sample - Superstore.csv` into SQL Server as `SuperstoreDB`

2\. Run `sql/01\_data\_cleaning.sql`

3\. Run `sql/02\_exploration.sql`



\### Python

```bash

pip install pandas matplotlib seaborn jupyter

cd python

jupyter notebook rfm\_analysis.ipynb

```



\---



\## Author

\- \*\*GitHub:\*\* \[maidat210606](https://github.com/maidat210606)

\- \*\*Stack:\*\* SQL Server · Python · Power BI · Git

