class: CommandLineTool
id: fprotpars.cwl
inputs:
- id: in_weights
  doc: properties Phylip weights file (optional)
  type: boolean?
  inputBinding:
    prefix: -weights
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
- id: in_which_code
  doc: "menu       [Universal] Use which genetic code (Values:\nU (Universal); M (Mitochondrial);\
    \ V\n(Vertebrate mitochondrial); F (Fly\nmitochondrial); Y (Yeast mitochondrial))"
  type: boolean?
  inputBinding:
    prefix: -whichcode
- id: in_print_data
  doc: boolean    [N] Print data at start of run
  type: boolean?
  inputBinding:
    prefix: -printdata
- id: in_step_box
  doc: boolean    [N] Print steps at each site
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
- fprotpars
