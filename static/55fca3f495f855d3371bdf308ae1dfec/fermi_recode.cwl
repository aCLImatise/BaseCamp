class: CommandLineTool
id: fermi_recode.cwl
inputs:
- id: in_rld
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- fermi
- recode
