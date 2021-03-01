class: CommandLineTool
id: plot_go_term.py.cwl
inputs:
- id: in_description
  doc: "write term descriptions to stdout from the obo file\nspecified in args"
  type: boolean?
  inputBinding:
    prefix: --description
- id: in_term
  doc: write the parents and children of the query term
  type: string?
  inputBinding:
    prefix: --term
- id: in_engine
  doc: "Graph plot engine, must be one of pygraphviz|pydot\n[default: pygraphviz]"
  type: string?
  inputBinding:
    prefix: --engine
- id: in_gml
  doc: 'Write GML output (for Cytoscape) [default: none]'
  type: boolean?
  inputBinding:
    prefix: --gml
- id: in_disable_draw_parents
  doc: Do not draw parents of the query term
  type: boolean?
  inputBinding:
    prefix: --disable-draw-parents
- id: in_disable_draw_children
  doc: "Do not draw children of the query term\n"
  type: boolean?
  inputBinding:
    prefix: --disable-draw-children
- id: in_obo_file
  doc: ''
  type: string?
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- plot_go_term.py
