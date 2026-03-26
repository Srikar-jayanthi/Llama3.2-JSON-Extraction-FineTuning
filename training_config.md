# Fine-Tuning Configuration

This document specifies the training parameters used in LlamaFactory for Supervised Fine-Tuning (SFT) of Llama-3.2-3B-Instruct.

## Model Details
- **Base Model:** `Llama-3.2-3B-Instruct`
- **Fine-Tuning Method:** LoRA (Low-Rank Adaptation)

## Hyperparameters & Justification

| Hyperparameter | Value | Justification |
|----------------|-------|---------------|
| **LoRA Rank** | `16` | Chosen to allow sufficient capacity for learning structured formatting constraints while maintaining efficiency in parameter updates. |
| **LoRA Alpha** | `32` | Following the standard practice of setting alpha to 2x rank to ensure proper scaling of the adapter gradients. |
| **Learning Rate** | `2e-4` | A robust learning rate for supervised fine-tuning on a small but high-quality dataset like our 80 curated examples. |
| **Epochs** | `3` | Balance between learning the JSON schema (epochs 1-2) and risk of overfitting to the specific training invoices (epoch 4+). |
| **Batch Size** | `16` | Optimized for a 24GB VRAM environment (gradient accumulation used if necessary) to provide stable gradient estimates. |
| **Quantization** | `4-bit` | Enables faster training and lower memory footprint without compromising extraction accuracy. |

## Training Observations
The loss curve shows a steady decline throughout epoch 1, followed by a slower refinement in epochs 2 and 3. There is no evidence of catastrophic forgetting, and the model maintains high-quality document reasoning while strictly adhering to the JSON schema.
