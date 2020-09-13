class: CommandLineTool
id: ../../../pfbtopfa.cwl
inputs:
- id: in_nostringval
  doc: ''
  type: boolean
  inputBinding:
    prefix: --nostringval--
- id: in_dict
  doc: :1189/1684(ro)(G)--   --dict:0/20(G)--   --dict:84/200(L)--
  type: boolean
  inputBinding:
    prefix: --dict
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- pfbtopfa
