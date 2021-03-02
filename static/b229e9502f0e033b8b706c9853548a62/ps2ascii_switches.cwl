class: CommandLineTool
id: ps2ascii_switches.cwl
inputs:
- id: in_dict
  doc: :1245/1684(ro)(G)--   --dict:0/20(G)--   --dict:81/200(L)--
  type: boolean?
  inputBinding:
    prefix: --dict
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- ps2ascii
- switches
