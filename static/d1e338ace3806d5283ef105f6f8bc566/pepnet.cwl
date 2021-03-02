class: CommandLineTool
id: pepnet.cwl
inputs:
- id: in_graph
  doc: "graph      [$EMBOSS_GRAPHICS value, or png] Graph type\n(ps, hpgl, hp7470,\
    \ hp7580, meta, cps, tek,\ntekt, none, data, png, gif, svg)"
  type: boolean?
  inputBinding:
    prefix: -graph
- id: in_amphipathic
  doc: "toggle     If this is true then the residues ACFGILMVWY\nare marked as squares\
    \ and all other\nresidues are unmarked. This overrides any\nother markup that\
    \ you may have specified\nusing the qualifiers '-squares', '-diamonds'\nand '-octags'."
  type: boolean?
  inputBinding:
    prefix: -amphipathic
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- pepnet
