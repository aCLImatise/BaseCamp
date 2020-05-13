class: CommandLineTool
id: htmltree.cwl
inputs:
- id: d
  doc: '[number]  sets HTML::TreeBuilder::Debug to that figure.'
  type: boolean
  inputBinding:
    prefix: -D
- id: w
  doc: turns on $tree->warn(1) for the new tree
  type: boolean
  inputBinding:
    prefix: -w
outputs: []
cwlVersion: v1.1
baseCommand:
- htmltree
