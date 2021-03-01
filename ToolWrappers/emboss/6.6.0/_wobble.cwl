class: CommandLineTool
id: _wobble.cwl
inputs:
- id: in_graph
  doc: "xygraph    [$EMBOSS_GRAPHICS value, or png] Graph type\n(ps, hpgl, hp7470,\
    \ hp7580, meta, cps, tek,\ntekt, none, data, png, gif, svg)"
  type: boolean?
  inputBinding:
    prefix: -graph
- id: in_window
  doc: "integer    [30] Window size in codons (Integer 1 or\nmore)"
  type: boolean?
  inputBinding:
    prefix: -window
- id: in_bases
  doc: string     [GC] Bases used (Any string)
  type: boolean?
  inputBinding:
    prefix: -bases
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- _wobble
