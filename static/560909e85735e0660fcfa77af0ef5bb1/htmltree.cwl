class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/htmltree.cwl
inputs:
- id: sets_htmltreebuilderdebug_figure
  doc: '[number]  sets HTML::TreeBuilder::Debug to that figure.'
  type: boolean
  inputBinding:
    prefix: -D
- id: turns_treewarn_new
  doc: turns on $tree->warn(1) for the new tree
  type: boolean
  inputBinding:
    prefix: -w
- id: d_three
  doc: ''
  type: boolean
  inputBinding:
    prefix: -D3
- id: file_two
  doc: ''
  type: File
  inputBinding:
    position: 0
- id: file_three
  doc: ''
  type: File
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- htmltree
