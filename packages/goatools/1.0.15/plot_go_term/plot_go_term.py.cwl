class: CommandLineTool
id: plot_go_term.py.cwl
inputs:
- id: in_description
  doc: "Write term descriptions to stdout from the obo file\nspecified in args"
  type: boolean?
  inputBinding:
    prefix: --description
- id: in_term
  doc: Write the parents and children of the query term
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
  doc: Do not draw children of the query term
  type: boolean?
  inputBinding:
    prefix: --disable-draw-children
- id: in_output
  doc: "Output filename, suffix is image format, common\nformats e.g. pdf|svg|png|jpg|...\
    \ [default:\nGO_lineage.pdf]"
  type: File?
  inputBinding:
    prefix: --output
- id: in_dpi
  doc: "Output figure dpi, ignored by vector image formats\nlike svg and pdf [default:\
    \ 96]\n"
  type: long?
  inputBinding:
    prefix: --dpi
- id: in_obo_file
  doc: ''
  type: string?
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: "Output filename, suffix is image format, common\nformats e.g. pdf|svg|png|jpg|...\
    \ [default:\nGO_lineage.pdf]"
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/goatools:1.0.15--pyh3252c3a_0
cwlVersion: v1.1
baseCommand:
- plot_go_term.py
