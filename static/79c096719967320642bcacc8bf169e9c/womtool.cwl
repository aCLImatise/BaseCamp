class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/womtool.cwl
inputs:
- id: jar
  doc: ''
  type: string
  inputBinding:
    prefix: -jar
- id: java
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: validate_vertical_line_inputs_vertical_line_parse_vertical_line_highlight_vertical_line_graph_vertical_line_upgrade_vertical_line_wom_graph
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: workflow_source
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- womtool
