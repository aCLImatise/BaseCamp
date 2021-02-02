class: CommandLineTool
id: scaden_train.cwl
inputs:
- id: in_train_datasets
  doc: Datasets used for training. Uses all by default.
  type: string
  inputBinding:
    prefix: --train_datasets
- id: in_model_dir
  doc: Path to store the model in
  type: File
  inputBinding:
    prefix: --model_dir
- id: in_batch_size
  doc: 'Batch size to use for training. Default: 128'
  type: long
  inputBinding:
    prefix: --batch_size
- id: in_learning_rate
  doc: 'Learning rate used for training. Default: 0.0001'
  type: double
  inputBinding:
    prefix: --learning_rate
- id: in_steps
  doc: Number of training steps
  type: long
  inputBinding:
    prefix: --steps
- id: in_training_data
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- scaden
- train
