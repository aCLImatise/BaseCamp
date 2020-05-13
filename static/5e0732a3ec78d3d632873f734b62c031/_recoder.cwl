class: CommandLineTool
id: _recoder.cwl
inputs:
- id: enzymes
  doc: string     [all] Comma separated enzyme list (Any string)
  type: boolean
  inputBinding:
    prefix: -enzymes
- id: r_format
  doc: )
  type: string
  inputBinding:
    prefix: -rformat
outputs: []
cwlVersion: v1.1
baseCommand:
- _recoder
