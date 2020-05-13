class: CommandLineTool
id: pfbtopfa_input.pfb.cwl
inputs:
- id: in1
  doc: (input.pfb)   (r)
  type: string
  inputBinding:
    position: 0
- id: dict
  doc: :1189/1684(ro)(G)--   --dict:0/20(G)--   --dict:81/200(L)--
  type: boolean
  inputBinding:
    prefix: --dict
outputs: []
cwlVersion: v1.1
baseCommand:
- pfbtopfa
- input.pfb
