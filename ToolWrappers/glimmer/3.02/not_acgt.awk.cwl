class: CommandLineTool
id: not_acgt.awk.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- not-acgt.awk
