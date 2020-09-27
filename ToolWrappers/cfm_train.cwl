class: CommandLineTool
id: cfm_train.cwl
inputs:
- id: in_input_filename
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_feature_filename
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_config_filename
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_peak_file_dir
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: in_group
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: in_status_filename
  doc: ''
  type: string
  inputBinding:
    position: 5
- id: in_no_train
  doc: ''
  type: string
  inputBinding:
    position: 6
- id: in_start_energy
  doc: ''
  type: string
  inputBinding:
    position: 7
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- cfm-train
