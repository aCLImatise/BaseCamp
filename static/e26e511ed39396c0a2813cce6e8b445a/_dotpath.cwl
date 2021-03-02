class: CommandLineTool
id: _dotpath.cwl
inputs:
- id: in_word_size
  doc: integer    [4] Word size (Integer 2 or more)
  type: boolean?
  inputBinding:
    prefix: -wordsize
- id: in_graph
  doc: "graph      [$EMBOSS_GRAPHICS value, or png] Graph type\n(ps, hpgl, hp7470,\
    \ hp7580, meta, cps, tek,\ntekt, none, data, png, gif, svg)"
  type: boolean?
  inputBinding:
    prefix: -graph
- id: in_overlaps
  doc: "boolean    [N] Displays the overlapping matches (in\nred) as well as the minimal\
    \ set of\nnon-overlapping matches"
  type: boolean?
  inputBinding:
    prefix: -overlaps
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- _dotpath
