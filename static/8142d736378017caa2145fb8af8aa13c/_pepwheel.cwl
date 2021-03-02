class: CommandLineTool
id: _pepwheel.cwl
inputs:
- id: in_graph
  doc: "graph      [$EMBOSS_GRAPHICS value, or png] Graph type\n(ps, hpgl, hp7470,\
    \ hp7580, meta, cps, tek,\ntekt, none, data, png, gif, svg)"
  type: boolean?
  inputBinding:
    prefix: -graph
- id: in_steps
  doc: "integer    [18] The number of residues plotted per turn\nis this value divided\
    \ by the 'turns' value.\n(Integer from 2 to 100)"
  type: boolean?
  inputBinding:
    prefix: -steps
- id: in_turns
  doc: "integer    [5] The number of residues plotted per turn\nis the 'steps' value\
    \ divided by this value.\n(Integer from 1 to 100)"
  type: boolean?
  inputBinding:
    prefix: -turns
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
- _pepwheel
