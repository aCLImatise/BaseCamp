class: CommandLineTool
id: ../../../nw_prune.cwl
inputs:
- id: in_hv
  doc: ''
  type: boolean
  inputBinding:
    prefix: -hv
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- nw_prune
