class: CommandLineTool
id: design_printgraphml.py.cwl
inputs:
- id: in_graph_ml
  doc: Read graphml file with the given filename.
  type: File
  inputBinding:
    prefix: --graphml
- id: in_input
  doc: Read custom structures and sequence constraints from
  type: boolean
  inputBinding:
    prefix: --input
- id: in_file
  doc: Read file in *.inp format
  type: File
  inputBinding:
    prefix: --file
- id: in_output
  doc: "Write graph to PNG file with the given filename.\n"
  type: File
  inputBinding:
    prefix: --output
- id: in_l
  doc: ''
  type: string
  inputBinding:
    prefix: -l
- id: in_stdin
  doc: -l LAYOUT, --layout LAYOUT
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- design-printgraphml.py
