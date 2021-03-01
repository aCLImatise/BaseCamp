class: CommandLineTool
id: reference2targets.py.cwl
inputs:
- id: in_output
  doc: "Output base name (extensions added automatically).\n"
  type: string?
  inputBinding:
    prefix: --output
- id: in_reference
  doc: Reference file.
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
- reference2targets.py
