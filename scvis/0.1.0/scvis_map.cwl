class: CommandLineTool
id: scvis_map.cwl
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
  doc: A pretrained scvis model used to map new data
  type: string
  inputBinding:
    prefix: --pretrained_model_file
- id: normalize
  doc: 'Data will be divided by this number if provided (default: from the trained
    model)'
  type: string
  inputBinding:
    prefix: --normalize
outputs: []
cwlVersion: v1.1
baseCommand:
- scvis
- map
