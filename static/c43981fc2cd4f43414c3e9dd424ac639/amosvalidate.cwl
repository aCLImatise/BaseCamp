class: CommandLineTool
id: amosvalidate.cwl
inputs:
- id: in_use_clear_range
  doc: "=<n>   Use the clear range of the reads? (0:no 1:yes,\ndefault: 1)\n"
  type: long?
  inputBinding:
    prefix: -D
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- amosvalidate
