class: CommandLineTool
id: scvis_train.cwl
inputs:
- id: data_matrix_file
  doc: The high-dimensional data matrix
  type: string
  inputBinding:
    prefix: --data_matrix_file
- id: config_file
  doc: Path to a yaml format configuration file
  type: string
  inputBinding:
    prefix: --config_file
- id: out_dir
  doc: Path for output files
  type: string
  inputBinding:
    prefix: --out_dir
- id: data_label_file
  doc: Just used for colouring scatter plots
  type: string
  inputBinding:
    prefix: --data_label_file
- id: pre_trained_model_file
  doc: A pretrained scvis model, continue to train this model
  type: string
  inputBinding:
    prefix: --pretrained_model_file
- id: normalize
  doc: 'The data will be divided by this number if provided (default: the maximum
    value).'
  type: string
  inputBinding:
    prefix: --normalize
- id: verbose
  doc: Print running information
  type: boolean
  inputBinding:
    prefix: --verbose
- id: verbose_interval
  doc: 'Print running information after running # of mini- batches'
  type: string
  inputBinding:
    prefix: --verbose_interval
- id: show_plot
  doc: Plot intermediate embedding when this parameter is set
  type: boolean
  inputBinding:
    prefix: --show_plot
outputs: []
cwlVersion: v1.1
baseCommand:
- scvis
- train
