class: CommandLineTool
id: ../../../collect_mgf.cwl
inputs:
- id: exp_no_directory
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: dd_results_file
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- collect_mgf
