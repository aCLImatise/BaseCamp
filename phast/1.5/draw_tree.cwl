class: CommandLineTool
id: draw_tree.cwl
inputs:
- id: d
  doc: Print "diagonal" branches, instead of "right-angle" or  "square" ones (produces
    a "cladogram", as opposed to a  "phenogram").  This option implies -s.
  type: boolean
  inputBinding:
    prefix: -d
- id: b
  doc: Suppress branch lengths.
  type: boolean
  inputBinding:
    prefix: -b
- id: v
  doc: Vertical layout.
  type: boolean
  inputBinding:
    prefix: -v
- id: s
  doc: Don't draw branches to scale.
  type: boolean
  inputBinding:
    prefix: -s
outputs: []
cwlVersion: v1.1
baseCommand:
- draw_tree
