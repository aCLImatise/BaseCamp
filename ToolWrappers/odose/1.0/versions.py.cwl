class: CommandLineTool
id: versions.py.cwl
inputs:
- id: in_target
  doc: Target output file for version numbers
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
- versions.py
