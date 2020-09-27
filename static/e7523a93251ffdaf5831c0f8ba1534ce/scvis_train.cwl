class: CommandLineTool
id: scvis_train.cwl
inputs:
- id: in_data_matrix_file
  doc: The high-dimensional data matrix
  type: File
  inputBinding:
    prefix: --data_matrix_file
- id: in_config_file
  doc: Path to a yaml format configuration file
  type: File
  inputBinding:
    prefix: --config_file
- id: in_out_dir
  doc: Path for output files
  type: File
  inputBinding:
    prefix: --out_dir
- id: in_data_label_file
  doc: Just used for colouring scatter plots
  type: File
  inputBinding:
    prefix: --data_label_file
- id: in_pre_trained_model_file
  doc: A pretrained scvis model, continue to train this model
  type: File
  inputBinding:
    prefix: --pretrained_model_file
- id: in_normalize
  doc: "The data will be divided by this number if provided\n(default: the maximum\
    \ value)."
  type: long
  inputBinding:
    prefix: --normalize
- id: in_verbose
  doc: Print running information
  type: boolean
  inputBinding:
    prefix: --verbose
- id: in_verbose_interval
  doc: "Print running information after running # of mini-\nbatches"
  type: string
  inputBinding:
    prefix: --verbose_interval
- id: in_show_plot
  doc: Plot intermediate embedding when this parameter is set
  type: boolean
  inputBinding:
    prefix: --show_plot
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out_dir
  doc: Path for output files
  type: File
  outputBinding:
    glob: $(inputs.in_out_dir)
cwlVersion: v1.1
baseCommand:
- scvis
- train
