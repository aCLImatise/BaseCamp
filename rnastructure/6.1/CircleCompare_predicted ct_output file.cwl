class: CommandLineTool
id: CircleCompare_predicted ct_output file.cwl
inputs:
- id: accepted_ct
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: output_file
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- CircleCompare
- predicted ct
- output file
