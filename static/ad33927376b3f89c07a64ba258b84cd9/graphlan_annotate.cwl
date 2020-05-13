class: CommandLineTool
id: graphlan_annotate.py.cwl
inputs:
- id: input_tree
  doc: the input tree in Newick, Nexus, PhyloXML or plain text format
  type: string
  inputBinding:
    position: 0
- id: output_tree
  doc: the output tree in PhyloXML format containing the newly added annotations.
    If not specified, the input tree file will be overwritten
  type: string
  inputBinding:
    position: 1
- id: an_not
  doc: specify the annotation file
  type: string
  inputBinding:
    prefix: --annot
outputs: []
cwlVersion: v1.1
baseCommand:
- graphlan_annotate.py
