class: CommandLineTool
id: fermi_fltuniq.cwl
inputs:
- id: in_fa
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- fermi
- fltuniq
