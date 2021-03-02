class: CommandLineTool
id: flowclrstats.py.cwl
inputs:
- id: in_file_locations_flow
  doc: File locations for flow clr file.
  type: File?
  inputBinding:
    prefix: -i
- id: in_o
  doc: Path to the directory for the output file.
  type: File?
  inputBinding:
    prefix: -o
- id: in_p
  doc: Path to the directory for the output file.
  type: File?
  inputBinding:
    prefix: -p
- id: in_flow_stats
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_o
  doc: Path to the directory for the output file.
  type: File?
  outputBinding:
    glob: $(inputs.in_o)
- id: out_p
  doc: Path to the directory for the output file.
  type: File?
  outputBinding:
    glob: $(inputs.in_p)
hints: []
cwlVersion: v1.1
baseCommand:
- flowclrstats.py
