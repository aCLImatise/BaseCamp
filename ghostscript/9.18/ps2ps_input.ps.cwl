class: CommandLineTool
id: ../../../ps2ps_input.ps.cwl
inputs:
- id: in_dict
  doc: :1191/1684(ro)(G)--   --dict:0/20(G)--   --dict:78/200(L)--
  type: boolean
  inputBinding:
    prefix: --dict
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- ps2ps
- input.ps
