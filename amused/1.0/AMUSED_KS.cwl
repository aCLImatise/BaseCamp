class: CommandLineTool
id: AMUSED_KS.cwl
inputs:
- id: nu
  doc: = no changing to upper case before scan (non ATGC bases are discarded)
  type: boolean
  inputBinding:
    prefix: -nu
outputs: []
cwlVersion: v1.1
baseCommand:
- AMUSED-KS
