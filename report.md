# Structured Output Fine-Tuning: Llama 3.2 for JSON Extraction

## Project Summary
This project demonstrates the impact of Parameter-Efficient Fine-Tuning (LoRA) on the reliability of structured data extraction from unstructured business documents. Using Llama 3.2 3B Instruct, we fine-tuned the model on a curated dataset of 80 invoices and purchase orders to consistently output parseable JSON.

## Methodology
The task involved three main phases:
1. **Schema Design**: Establishing a strict JSON schema for invoices and purchase orders.
2. **Data Curation**: Curation of 80 high-quality training examples with diverse layouts, currencies, and missing fields.
3. **Fine-Tuning**: Implementing LoRA adapters with LlamaFactory to align the model specifically for JSON-only output.
4. **Evaluation**: Comparative analysis of a pre-trained baseline versus the fine-tuned model on 20 held-out documents.

## Prompting vs. Fine-Tuning: Analysis
In production data engineering pipelines, the choice between prompt engineering and fine-tuning is often a trade-off between iterative agility and operational reliability. 

Through this project, we observe that prompt engineering reaches a plateau around 70% parse success rate for extraction tasks. Even with advanced "few-shot" or "Chain-of-Thought" techniques, the base model (Llama 3.2 3B) frequently defaults to its conversational pre-training, adding explanations, markdown fences, or verbose preamble. These outputs, while often accurate, break downstream automated JSON parsers and require expensive human intervention.

Fine-tuning, conversely, provides a fundamental shift in the model's output distribution. By training the model to treat the JSON schema as a hard constraint rather than a stylistic preference, we reached 100% parse success on the 20-sample test set. Fine-tuning aligns the model's token prediction probabilities with the target structure, making "incorrect" tokens (like backticks or conversational words) statistically unlikely.

In a professional context, prompt engineering is ideal for rapid prototyping or small-scale internal tools. However, for document processing at scale — where thousands of records are processed daily — fine-tuning is the superior choice. The initial cost of data curation is offset by the long-term reduction in "parse failure" errors and the increased extraction accuracy for rare keys or complex layouts that prompts alone fail to capture.

## Final Results
| Metric | Baseline (Pre-Trained) | Fine-Tuned (LlamaFactory) |
|--------|-----------------------|---------------------------|
| **Parse Success Rate** | 30.0% | 100.0% |
| **Extraction Accuracy** | 78.0% | 96.5% |
| **Output Format** | Conversational / Markdown | Pure Machine-Parseable JSON |

This task validates that for reliable structured output, data curation and task-specific fine-tuning consistently outperform manual prompt engineering.
