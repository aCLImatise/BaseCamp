class: CommandLineTool
id: abiview.cwl
inputs:
- id: in_graph
  doc: "xygraph    [$EMBOSS_GRAPHICS value, or png] Graph type\n(ps, hpgl, hp7470,\
    \ hp7580, meta, cps, tek,\ntekt, none, data, png, gif, svg)"
  type: boolean
  inputBinding:
    prefix: -graph
- id: in_start_base
  doc: "integer    [0] First base to report or display (Integer\n0 or more)"
  type: boolean
  inputBinding:
    prefix: -startbase
- id: in_end_base
  doc: "integer    [0] Last sequence base to report or display.\nIf the default is\
    \ set to zero then the\nvalue of this is taken as the maximum number\nof bases.\
    \ (Any integer value)"
  type: boolean
  inputBinding:
    prefix: -endbase
- id: in_y_ticks
  doc: boolean    [N] Display y-axis ticks
  type: boolean
  inputBinding:
    prefix: -yticks
- id: in_window
  doc: "integer    [40] Sequence display window size (Any\ninteger value)"
  type: boolean
  inputBinding:
    prefix: -window
- id: in_string_base_graphs
  doc: "string     [GATC] Base graphs to be displayed (Any\nstring, matching regular\
    \ expression\n/[GATC]+/)"
  type: boolean
  inputBinding:
    prefix: -bases
- id: in_separate
  doc: boolean    [N] Separate the trace graphs for the 4
  type: boolean
  inputBinding:
    prefix: -separate
- id: in_general_qualifiers
  doc: 'General qualifiers:'
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- abiview
