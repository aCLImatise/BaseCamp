class: CommandLineTool
id: macs2_results..cwl
inputs:
- id: in_macs_two
  doc: ''
  type: long
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- macs2
- results.
