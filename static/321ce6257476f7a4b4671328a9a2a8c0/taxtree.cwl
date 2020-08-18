class: CommandLineTool
id: ../../../taxtree.sh.cwl
inputs:
- id: x_mx_two_zero_g
  doc: specify 20 gigs of RAM.  The max is typically 85% of physical memory.
  type: string
  inputBinding:
    prefix: -Xmx20g
- id: names_dot_dmp
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: nodes_dot_dmp
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: merged_dot_dmp
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: tree_dot_tax_tree_do_tgz
  doc: ''
  type: string
  inputBinding:
    position: 3
outputs: []
cwlVersion: v1.1
baseCommand:
- taxtree.sh
