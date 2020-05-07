class: CommandLineTool
id: merlin_offline.cwl
inputs:
- id: dat_infer
  doc: '[merlin-infer.dat],'
  type: boolean
  inputBinding:
    prefix: --datinfer
- id: ped_infer
  doc: '[merlin-infer.ped]'
  type: boolean
  inputBinding:
    prefix: --pedinfer
- id: custom
  doc: '[covars.tbl]'
  type: boolean
  inputBinding:
    prefix: --custom
outputs: []
cwlVersion: v1.1
baseCommand:
- merlin-offline
