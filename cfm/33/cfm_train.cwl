class: CommandLineTool
id: cfm_train.cwl
inputs:
- id: cfm_train_exe
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: input_filename
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: feature_filename
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: config_filename
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: peak_file_dir
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: group
  doc: ''
  type: string
  inputBinding:
    position: 5
- id: status_filename
  doc: ''
  type: string
  inputBinding:
    position: 6
- id: no_train
  doc: ''
  type: string
  inputBinding:
    position: 7
- id: start_energy
  doc: ''
  type: string
  inputBinding:
    position: 8
outputs: []
cwlVersion: v1.1
baseCommand:
- cfm-train
