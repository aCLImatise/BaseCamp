class: CommandLineTool
id: wftopfa.cwl
inputs:
- id: in_dict
  doc: :1189/1684(ro)(G)--   --dict:0/20(G)--   --dict:80/200(L)--   --dict:26/100(L)--
  type: boolean
  inputBinding:
    prefix: --dict
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- wftopfa
