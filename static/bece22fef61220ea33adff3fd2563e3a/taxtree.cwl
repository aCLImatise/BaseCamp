class: CommandLineTool
id: taxtree.sh.cwl
inputs:
- id: names_dmp
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: nodes_dmp
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: merged_dmp
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: tree_tax_tree_gz
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: xmx20g
  doc: specify 20 gigs of RAM.  The max is typically 85% of physical memory.
  type: string
  inputBinding:
    prefix: -Xmx20g
outputs: []
cwlVersion: v1.1
baseCommand:
- taxtree.sh
