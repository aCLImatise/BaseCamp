class: CommandLineTool
id: ../../../cfm_train.cwl
inputs:
- id: input_filename
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: feature_filename
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: config_filename
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: peak_file_dir
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: group
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: status_filename
  doc: ''
  type: string
  inputBinding:
    position: 5
- id: no_train
  doc: ''
  type: string
  inputBinding:
    position: 6
- id: start_energy
  doc: ''
  type: string
  inputBinding:
    position: 7
outputs: []
cwlVersion: v1.1
baseCommand:
- cfm-train
