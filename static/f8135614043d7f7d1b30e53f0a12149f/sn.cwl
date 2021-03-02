class: CommandLineTool
id: sn.cwl
inputs:
- id: in_quiet
  doc: Quiet mode (minimal display)
  type: boolean?
  inputBinding:
    prefix: -quiet
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- sn
