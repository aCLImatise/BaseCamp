class: CommandLineTool
id: ../../../ps2ps2_input.ps.cwl
inputs:
- id: dict
  doc: :1191/1684(ro)(G)--   --dict:0/20(G)--   --dict:78/200(L)--
  type: boolean
  inputBinding:
    prefix: --dict
outputs: []
cwlVersion: v1.1
baseCommand:
- ps2ps2
- input.ps
