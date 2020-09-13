class: CommandLineTool
id: ../../../nw_stats.cwl
inputs:
- id: in_fhh
  doc: ''
  type: boolean
  inputBinding:
    prefix: -fHh
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- nw_stats
