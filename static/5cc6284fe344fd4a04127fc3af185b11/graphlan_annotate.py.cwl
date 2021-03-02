class: CommandLineTool
id: graphlan_annotate.py.cwl
inputs:
- id: in_an_not
  doc: specify the annotation file
  type: File?
  inputBinding:
    prefix: --annot
- id: in_v
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -v
- id: in_input_tree
  doc: "the input tree in Newick, Nexus, PhyloXML or plain\ntext format"
  type: string
  inputBinding:
    position: 0
- id: in_output_tree
  doc: "the output tree in PhyloXML format containing the\nnewly added annotations.\
    \ If not specified, the input\ntree file will be overwritten"
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- graphlan_annotate.py
