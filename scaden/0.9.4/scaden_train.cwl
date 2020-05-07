class: CommandLineTool
id: scaden_train.cwl
inputs:
- id: train_datasets
  doc: Datasets used for training. Uses all by default.
  type: string
  inputBinding:
    prefix: --train_datasets
- id: model_dir
  doc: Path to store the model in
  type: string
  inputBinding:
    prefix: --model_dir
- id: batch_size
  doc: 'Batch size to use for training. Default: 128'
  type: long
  inputBinding:
    prefix: --batch_size
- id: learning_rate
  doc: 'Learning rate used for training. Default: 0.0001'
  type: double
  inputBinding:
    prefix: --learning_rate
- id: steps
  doc: Number of training steps
  type: long
  inputBinding:
    prefix: --steps
outputs: []
cwlVersion: v1.1
baseCommand:
- scaden
- train
