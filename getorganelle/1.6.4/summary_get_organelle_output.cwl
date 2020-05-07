class: CommandLineTool
id: summary_get_organelle_output.py.cwl
inputs:
- id: list_of_sample_folders
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: o
  doc: Output csv file.
  type: string
  inputBinding:
    prefix: -o
outputs: []
cwlVersion: v1.1
baseCommand:
- summary_get_organelle_output.py
