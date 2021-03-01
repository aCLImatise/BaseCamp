class: CommandLineTool
id: design_generategraphml.py.cwl
inputs:
- id: in_input
  doc: Read custom structures and sequence constraints from
  type: boolean?
  inputBinding:
    prefix: --input
- id: in_output
  doc: "Write graphml file with the given filename.\n"
  type: File?
  inputBinding:
    prefix: --output
- id: in_f
  doc: ''
  type: File?
  inputBinding:
    prefix: -f
- id: in_stdin
  doc: -f FILE, --file FILE  Read file in *.inp format
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
- design-generategraphml.py
