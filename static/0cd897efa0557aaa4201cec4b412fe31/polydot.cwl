class: CommandLineTool
id: polydot.cwl
inputs:
- id: in_word_size
  doc: integer    [6] Word size (Integer 2 or more)
  type: boolean?
  inputBinding:
    prefix: -wordsize
- id: in_graph
  doc: "graph      [$EMBOSS_GRAPHICS value, or png] Graph type\n(ps, hpgl, hp7470,\
    \ hp7580, meta, cps, tek,\ntekt, none, data, png, gif, svg)"
  type: boolean?
  inputBinding:
    prefix: -graph
- id: in_dump_feat
  doc: toggle     [N] Dump all matches as feature files
  type: boolean?
  inputBinding:
    prefix: -dumpfeat
- id: in_gap
  doc: "integer    [10] This specifies the size of the gap that\nis used to separate\
    \ the individual dotplots\nin the display. The size is measured in\nresidues,\
    \ as displayed in the output.\n(Integer 0 or more)"
  type: boolean?
  inputBinding:
    prefix: -gap
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- polydot
