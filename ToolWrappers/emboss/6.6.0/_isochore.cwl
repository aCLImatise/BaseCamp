class: CommandLineTool
id: _isochore.cwl
inputs:
- id: in_graph
  doc: "xygraph    [$EMBOSS_GRAPHICS value, or png] Graph type\n(ps, hpgl, hp7470,\
    \ hp7580, meta, cps, tek,\ntekt, none, data, png, gif, svg)"
  type: boolean
  inputBinding:
    prefix: -graph
- id: in_window
  doc: integer    [1000] Window size (Integer 1 or more)
  type: boolean
  inputBinding:
    prefix: -window
- id: in_shift
  doc: integer    [100] Shift increment (Integer 1 or more)
  type: boolean
  inputBinding:
    prefix: -shift
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- _isochore
