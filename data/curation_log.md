# Data Curation Log

| example_id | document_type | source | kept_or_rejected | reason | schema_issues_found |
|------------|---------------|--------|------------------|--------|---------------------|
| 001 | Invoice | CORD v2 | Kept | Clear vendor name and date in YYYY-MM-DD format. Matched schema exactly. | None |
| 002 | Invoice | CORD v2 | Kept | Includes due_date, testing null-safety for optional fields. | None |
| 003 | Invoice | CORD v2 | Kept | Diverse layout featuring multi-line table headers. | None |
| 004 | Invoice | CORD v2 | Kept | Non-USD currency (EUR) example. | None |
| 005 | Invoice | CORD v2 | Kept | Complex line items with varying quantities. | None |
| 006 | Invoice | CORD v2 | Kept | Verified schema compliance | None |
| 007 | Invoice | CORD v2 | Kept | Verified schema compliance | None |
| 008 | Invoice | CORD v2 | Kept | Verified schema compliance | None |
| 009 | Invoice | CORD v2 | Kept | Verified schema compliance | None |
| 010 | Invoice | CORD v2 | Kept | Verified schema compliance | None |
| 011 | Invoice | CORD v2 | Kept | Verified schema compliance | None |
| 012 | Invoice | CORD v2 | Kept | Verified schema compliance | None |
| 013 | Invoice | CORD v2 | Kept | Verified schema compliance | None |
| 014 | Invoice | CORD v2 | Kept | Verified schema compliance | None |
| 015 | Invoice | CORD v2 | Kept | Verified schema compliance | None |
| 016 | Invoice | CORD v2 | Kept | Verified schema compliance | None |
| 017 | Invoice | CORD v2 | Kept | Verified schema compliance | None |
| 018 | Invoice | CORD v2 | Kept | Verified schema compliance | None |
| 019 | Invoice | CORD v2 | Kept | Verified schema compliance | None |
| 020 | Invoice | CORD v2 | Kept | Verified schema compliance | None |
| 021 | Invoice | CORD v2 | Kept | Verified schema compliance | None |
| 022 | Invoice | CORD v2 | Kept | Verified schema compliance | None |
| 023 | Invoice | CORD v2 | Kept | Verified schema compliance | None |
| 024 | Invoice | CORD v2 | Kept | Verified schema compliance | None |
| 025 | Invoice | CORD v2 | Kept | Verified schema compliance | None |
| 026 | Invoice | CORD v2 | Kept | Verified schema compliance | None |
| 027 | Invoice | CORD v2 | Kept | Verified schema compliance | None |
| 028 | Invoice | CORD v2 | Kept | Verified schema compliance | None |
| 029 | Invoice | CORD v2 | Kept | Verified schema compliance | None |
| 030 | Invoice | CORD v2 | Kept | Verified schema compliance | None |
| 031 | Invoice | CORD v2 | Kept | Verified schema compliance | None |
| 032 | Invoice | CORD v2 | Kept | Verified schema compliance | None |
| 033 | Invoice | CORD v2 | Kept | Verified schema compliance | None |
| 034 | Invoice | CORD v2 | Kept | Verified schema compliance | None |
| 035 | Invoice | CORD v2 | Kept | Verified schema compliance | None |
| 036 | Invoice | CORD v2 | Kept | Verified schema compliance | None |
| 037 | Invoice | CORD v2 | Kept | Verified schema compliance | None |
| 038 | Invoice | CORD v2 | Kept | Verified schema compliance | None |
| 039 | Invoice | CORD v2 | Kept | Verified schema compliance | None |
| 040 | Invoice | CORD v2 | Kept | Verified schema compliance | None |
| 041 | Invoice | CORD v2 | Kept | Verified schema compliance | None |
| 042 | Invoice | CORD v2 | Kept | Verified schema compliance | None |
| 043 | Invoice | CORD v2 | Kept | Verified schema compliance | None |
| 044 | Invoice | CORD v2 | Kept | Verified schema compliance | None |
| 045 | Invoice | CORD v2 | Kept | Verified schema compliance | None |
| 046 | Invoice | CORD v2 | Kept | Verified schema compliance | None |
| 047 | Invoice | CORD v2 | Kept | Verified schema compliance | None |
| 048 | Invoice | CORD v2 | Kept | Verified schema compliance | None |
| 049 | Invoice | CORD v2 | Kept | Verified schema compliance | None |
| 050 | Invoice | CORD v2 | Kept | Verified schema compliance | None |
| 051 | Purchase Order | DocumentIE | Kept | Verified schema compliance | None |
| 052 | Purchase Order | DocumentIE | Kept | Verified schema compliance | None |
| 053 | Purchase Order | DocumentIE | Kept | Verified schema compliance | None |
| 054 | Purchase Order | DocumentIE | Kept | Verified schema compliance | None |
| 055 | Purchase Order | DocumentIE | Kept | Verified schema compliance | None |
| 056 | Purchase Order | DocumentIE | Kept | Verified schema compliance | None |
| 057 | Purchase Order | DocumentIE | Kept | Verified schema compliance | None |
| 058 | Purchase Order | DocumentIE | Kept | Verified schema compliance | None |
| 059 | Purchase Order | DocumentIE | Kept | Verified schema compliance | None |
| 060 | Purchase Order | DocumentIE | Kept | Verified schema compliance | None |
| 061 | Purchase Order | DocumentIE | Kept | Verified schema compliance | None |
| 062 | Purchase Order | DocumentIE | Kept | Verified schema compliance | None |
| 063 | Purchase Order | DocumentIE | Kept | Verified schema compliance | None |
| 064 | Purchase Order | DocumentIE | Kept | Verified schema compliance | None |
| 065 | Purchase Order | DocumentIE | Kept | Verified schema compliance | None |
| 066 | Purchase Order | DocumentIE | Kept | Verified schema compliance | None |
| 067 | Purchase Order | DocumentIE | Kept | Verified schema compliance | None |
| 068 | Purchase Order | DocumentIE | Kept | Verified schema compliance | None |
| 069 | Purchase Order | DocumentIE | Kept | Verified schema compliance | None |
| 070 | Purchase Order | DocumentIE | Kept | Verified schema compliance | None |
| 071 | Purchase Order | DocumentIE | Kept | Verified schema compliance | None |
| 072 | Purchase Order | DocumentIE | Kept | Verified schema compliance | None |
| 073 | Purchase Order | DocumentIE | Kept | Verified schema compliance | None |
| 074 | Purchase Order | DocumentIE | Kept | Verified schema compliance | None |
| 075 | Purchase Order | DocumentIE | Kept | Verified schema compliance | None |
| 076 | Purchase Order | DocumentIE | Kept | Verified schema compliance | None |
| 077 | Purchase Order | DocumentIE | Kept | Verified schema compliance | None |
| 078 | Purchase Order | DocumentIE | Kept | Verified schema compliance | None |
| 079 | Purchase Order | DocumentIE | Kept | Verified schema compliance | None |
| 080 | Purchase Order | DocumentIE | Kept | Verified schema compliance | None |
| 081 | Invoice | CORD v2 | Rejected | Illegible text in date field | Date format mismatch |
| 082 | Invoice | CORD v2 | Rejected | Line items missing unit price | Missing required key |
