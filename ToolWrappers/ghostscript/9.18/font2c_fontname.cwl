class: CommandLineTool
id: font2c_fontname.cwl
inputs:
- id: in_nostringval
  doc: cfile   (--help)   (w)
  type: boolean
  inputBinding:
    prefix: --nostringval--
- id: in_dict
  doc: :1189/1684(G)--   --dict:0/20(G)--   --dict:85/200(L)--   --dict:52/100(L)--
  type: boolean
  inputBinding:
    prefix: --dict
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- font2c
- fontname
