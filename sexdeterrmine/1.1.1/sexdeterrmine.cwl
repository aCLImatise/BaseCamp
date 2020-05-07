class: CommandLineTool
id: sexdeterrmine.cwl
inputs:
- id: i
  doc: ''
  type: string
  inputBinding:
    prefix: -I
- id: f
  doc: ''
  type: string
  inputBinding:
    prefix: -f
- id: v
  doc: ''
  type: boolean
  inputBinding:
    prefix: -v
outputs: []
cwlVersion: v1.1
baseCommand:
- sexdeterrmine
