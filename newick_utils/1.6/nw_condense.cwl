class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/nw_condense.cwl
inputs:
- id: unicifies_leaf_labels
  doc: ': unicifies leaf labels by visiting the tree in Newick order and removing
    any leaf node whose label was already seen.'
  type: boolean
  inputBinding:
    prefix: -u
outputs: []
cwlVersion: v1.1
baseCommand:
- nw_condense
