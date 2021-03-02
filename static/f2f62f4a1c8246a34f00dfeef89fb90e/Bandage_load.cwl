class: CommandLineTool
id: Bandage_load.cwl
inputs:
- id: in_draw
  doc: Draw graph after loading
  type: boolean?
  inputBinding:
    prefix: --draw
- id: in_help_all
  doc: View all command line settings
  type: boolean?
  inputBinding:
    prefix: --helpall
- id: in_graph
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- Bandage
- load
