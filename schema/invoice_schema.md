# Invoice JSON Schema

This document defines the structured output format for extracted invoice data. All training and evaluation examples must conform to this schema exactly.

## Schema Definition

| Key              | Data Type         | Description                                                      | Missing Value Handling |
|------------------|-------------------|------------------------------------------------------------------|------------------------|
| `vendor`         | `string`          | Legal name of the seller/vendor.                                 | Required               |
| `invoice_number` | `string`          | The unique identifier assigned to the invoice.                   | Required               |
| `date`           | `string`          | Date of issue in `YYYY-MM-DD` format.                            | Required               |
| `due_date`       | `string` / `null` | Payment deadline in `YYYY-MM-DD` format.                         | `null`                 |
| `currency`       | `string`          | 3-letter ISO 4217 currency code (e.g., USD, EUR, GBP).           | Required               |
| `subtotal`       | `float`           | Sum of all line items before taxes.                              | Required               |
| `tax`            | `float` / `null`  | Total tax amount applied.                                        | `null`                 |
| `total`          | `float`           | The final amount payable (subtotal + tax).                       | Required               |
| `line_items`     | `array`           | List of items purchased (see Object below).                      | Required (can be empty)|

### `line_items` Object

| Key            | Data Type | Description                                                      |
|----------------|-----------|------------------------------------------------------------------|
| `description`  | `string`  | Brief description of the product or service.                     |
| `quantity`     | `integer` | Number of units purchased.                                       |
| `unit_price`   | `float`   | Price per single unit.                                           |

## Example Output

```json
{
  "vendor": "Acme Corp",
  "invoice_number": "INV-2024-001",
  "date": "2024-03-26",
  "due_date": "2024-04-26",
  "currency": "USD",
  "subtotal": 100.00,
  "tax": 8.00,
  "total": 108.00,
  "line_items": [
    {
      "description": "Widget A",
      "quantity": 2,
      "unit_price": 50.00
    }
  ]
}
```
