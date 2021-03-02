class: CommandLineTool
id: fdnapars.cwl
inputs:
- id: in_weights
  doc: properties Weights file
  type: boolean?
  inputBinding:
    prefix: -weights
- id: in_max_trees
  doc: "integer    [10000] Number of trees to save (Integer\nfrom 1 to 1000000)"
  type: boolean?
  inputBinding:
    prefix: -maxtrees
- id: in_transversion
  doc: boolean    [N] Use transversion parsimony
  type: boolean?
  inputBinding:
    prefix: -transversion
- id: in_out_gr_no
  doc: "integer    [0] Species number to use as outgroup\n(Integer 0 or more)"
  type: boolean?
  inputBinding:
    prefix: -outgrno
- id: in_do_threshold
  doc: toggle     [N] Use threshold parsimony
  type: boolean?
  inputBinding:
    prefix: -dothreshold
- id: in_print_data
  doc: boolean    [N] Print data at start of run
  type: boolean?
  inputBinding:
    prefix: -printdata
- id: in_step_box
  doc: boolean    [N] Print out steps in each site
  type: boolean?
  inputBinding:
    prefix: -stepbox
- id: in_an_cseq
  doc: boolean    [N] Print sequences at all nodes of tree
  type: boolean?
  inputBinding:
    prefix: -ancseq
- id: in_alignments
  doc: '[-intreefile]        tree       Phylip tree file (optional)'
  type: string
  inputBinding:
    position: 0
- id: in_file
  doc: 'Additional (Optional) qualifiers (* if not always prompted):'
  type: File
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- fdnapars
