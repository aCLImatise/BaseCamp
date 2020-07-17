class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/nw_labels.cwl
inputs:
- id: print_labels_inner
  doc: ": don't print labels of inner nodes"
  type: boolean
  inputBinding:
    prefix: -I
- id: print_leaf_labels
  doc: ": don't print leaf labels"
  type: boolean
  inputBinding:
    prefix: -L
- id: print_only_roots
  doc: ": print only the root's label"
  type: boolean
  inputBinding:
    prefix: -r
- id: tabseparated_print_single
  doc: ': TAB-separated - print on a single line, separated by tab stops.'
  type: boolean
  inputBinding:
    prefix: -t
outputs: []
cwlVersion: v1.1
baseCommand:
- nw_labels
