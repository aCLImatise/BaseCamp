class: CommandLineTool
id: gomo_highlight.cwl
inputs:
- id: in_go_dag
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_gomo_xml
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- gomo_highlight
