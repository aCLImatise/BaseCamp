class: CommandLineTool
id: round_statistics.py.cwl
inputs:
- id: in_o
  doc: ''
  type: string
  inputBinding:
    prefix: -o
- id: in_i
  doc: ''
  type: string
  inputBinding:
    prefix: -i
- id: in_d
  doc: ''
  type: Directory
  inputBinding:
    prefix: -d
- id: in_f
  doc: ''
  type: File
  inputBinding:
    prefix: -f
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_d
  doc: ''
  type: Directory
  outputBinding:
    glob: $(inputs.in_d)
cwlVersion: v1.1
baseCommand:
- round_statistics.py
