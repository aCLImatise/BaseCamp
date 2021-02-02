class: CommandLineTool
id: htmltree.cwl
inputs:
- id: in_sets_htmltreebuilderdebug_figure
  doc: '[number]  sets HTML::TreeBuilder::Debug to that figure.'
  type: boolean
  inputBinding:
    prefix: -D
- id: in_turns_treewarn_new
  doc: turns on $tree->warn(1) for the new tree
  type: boolean
  inputBinding:
    prefix: -w
- id: in_d_three
  doc: ''
  type: boolean
  inputBinding:
    prefix: -D3
- id: in_file_two
  doc: ''
  type: long
  inputBinding:
    position: 0
- id: in_file_three
  doc: ''
  type: long
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- htmltree
