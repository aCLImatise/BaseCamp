class: CommandLineTool
id: trace_scf_dump.cwl
inputs:
- id: in_scf_dump
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_scf_filename
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- trace_scf_dump
