class: CommandLineTool
id: ../../../merlin_offline.cwl
inputs:
- id: in_dat_infer
  doc: '[merlin-infer.dat],'
  type: boolean
  inputBinding:
    prefix: --datinfer
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
- merlin-offline
