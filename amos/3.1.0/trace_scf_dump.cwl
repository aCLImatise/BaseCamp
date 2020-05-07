class: CommandLineTool
id: trace_scf_dump.cwl
inputs:
- id: scf_dump
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: scf_filename
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- trace_scf_dump
