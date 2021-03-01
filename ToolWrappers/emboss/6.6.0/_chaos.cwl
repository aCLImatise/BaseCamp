class: CommandLineTool
id: _chaos.cwl
inputs:
- id: in_graph
  doc: "graph      [$EMBOSS_GRAPHICS value, or png] Graph type\n(ps, hpgl, hp7470,\
    \ hp7580, meta, cps, tek,\ntekt, none, data, png, gif, svg)"
  type: boolean?
  inputBinding:
    prefix: -graph
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- _chaos
