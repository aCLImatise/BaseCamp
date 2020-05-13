class: CommandLineTool
id: pfbtopfa_output.pfa.cwl
inputs:
- id: in1
  doc: (output.pfa)   (r)
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
- output.pfa
