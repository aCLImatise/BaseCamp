class: CommandLineTool
id: deepac_train.cwl
inputs:
- id: in_sensitive
  doc: Use the sensitive model.
  type: boolean?
  inputBinding:
    prefix: --sensitive
- id: in_rapid
  doc: Use the rapid CNN model.
  type: boolean?
  inputBinding:
    prefix: --rapid
- id: in_custom
  doc: Use the user-supplied configuration file.
  type: File?
  inputBinding:
    prefix: --custom
- id: in_n_cpus
  doc: 'Number of CPU cores. Default: all.'
  type: long?
  inputBinding:
    prefix: --n-cpus
- id: in_gpus
  doc: 'GPU devices to use (comma-separated). Default: all'
  type: string[]
  inputBinding:
    prefix: --gpus
- id: in_train_data
  doc: Path to training data.
  type: File?
  inputBinding:
    prefix: --train-data
- id: in_train_labels
  doc: Path to training labels.
  type: File?
  inputBinding:
    prefix: --train-labels
- id: in_val_data
  doc: Path to validation data.
  type: File?
  inputBinding:
    prefix: --val-data
- id: in_val_labels
  doc: Path to validation labels.
  type: File?
  inputBinding:
    prefix: --val-labels
- id: in_run_name
  doc: "Run name (default: based on chosen config).\n"
  type: string?
  inputBinding:
    prefix: --run-name
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/deepac:0.13.6--py_0
cwlVersion: v1.1
baseCommand:
- deepac
- train
