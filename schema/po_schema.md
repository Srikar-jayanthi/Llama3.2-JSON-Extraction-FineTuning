# Purchase Order JSON Schema

This document defines the structured output format for extracted purchase order data.

## Schema Definition

| Key             | Data Type         | Description                                                      | Missing Value Handling |
|-----------------|-------------------|------------------------------------------------------------------|------------------------|
| `buyer`         | `string`          | Legal name of the buying company.                                | Required               |
| `supplier`      | `string`          | Legal name of the item supplier.                                 | Required               |
| `po_number`     | `string`          | The unique Purchase Order identifier.                            | Required               |
| `date`          | `string`          | Date of PO issuance in `YYYY-MM-DD` format.                      | Required               |
| `delivery_date` | `string` / `null` | Expected delivery date in `YYYY-MM-DD` format.                   | `null`                 |
| `currency`      | `string`          | 3-letter ISO 4217 currency code.                                 | Required               |
| `total`         | `float`           | Total amount of the purchase order.                              | Required               |
| `items`         | `array`           | List of items being ordered (see Object below).                  | Required               |

### `items` Object

| Key          | Data Type | Description                              |
|--------------|-----------|------------------------------------------|
| `item_name`  | `string`  | Description of the item.                 |
| `quantity`   | `integer` | Quantity ordered.                        |
| `unit_price` | `float`   | Individual item price.                   |

## Example Output

```json
{
  "buyer": "Global Tech Solutions",
  "supplier": "Supply Chain Pro Inc.",
  "po_number": "PO-12345-X",
  "date": "2024-03-20",
  "delivery_date": "2024-04-15",
  "currency": "USD",
  "total": 5000.00,
  "items": [
    {
      "item_name": "High-End Server Router",
      "quantity": 2,
      "unit_price": 2500.00
    }
  ]
}
```
