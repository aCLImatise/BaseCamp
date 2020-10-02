class: CommandLineTool
id: nw_labels.cwl
inputs:
- id: in_print_labels_inner
  doc: ": don't print labels of inner nodes"
  type: boolean
  inputBinding:
    prefix: -I
- id: in_print_leaf_labels
  doc: ": don't print leaf labels"
  type: boolean
  inputBinding:
    prefix: -L
- id: in_print_roots_label
  doc: ": print only the root's label"
  type: boolean
  inputBinding:
    prefix: -r
- id: in_tabseparated_print_single
  doc: ': TAB-separated - print on a single line, separated by tab stops.'
  type: boolean
  inputBinding:
    prefix: -t
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- nw_labels
