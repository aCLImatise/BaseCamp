class: CommandLineTool
id: minx_offline.cwl
inputs:
- id: in_ped_infer
  doc: '[merlin-infer.ped]'
  type: boolean
  inputBinding:
    prefix: --pedinfer
- id: in_custom
  doc: '[covars.tbl]'
  type: boolean
  inputBinding:
    prefix: --custom
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- minx-offline
