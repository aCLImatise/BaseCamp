class: CommandLineTool
id: scorer_predicted ct_accepted ct.cwl
inputs:
- id: output_file
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- scorer
- predicted ct
- accepted ct
