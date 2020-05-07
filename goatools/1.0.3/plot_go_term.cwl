class: CommandLineTool
id: plot_go_term.py.cwl
inputs:
- id: obo_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: description
  doc: write term descriptions to stdout from the obo file specified in args
  type: boolean
  inputBinding:
    prefix: --description
- id: term
  doc: write the parents and children of the query term
  type: string
  inputBinding:
    prefix: --term
- id: engine
  doc: 'Graph plot engine, must be one of pygraphviz|pydot [default: pygraphviz]'
  type: string
  inputBinding:
    prefix: --engine
- id: gml
  doc: 'Write GML output (for Cytoscape) [default: none]'
  type: boolean
  inputBinding:
    prefix: --gml
- id: disable_draw_parents
  doc: Do not draw parents of the query term
  type: boolean
  inputBinding:
    prefix: --disable-draw-parents
- id: disable_draw_children
  doc: Do not draw children of the query term
  type: boolean
  inputBinding:
    prefix: --disable-draw-children
outputs: []
cwlVersion: v1.1
baseCommand:
- plot_go_term.py
