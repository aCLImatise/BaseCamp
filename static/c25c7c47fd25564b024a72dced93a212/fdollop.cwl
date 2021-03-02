class: CommandLineTool
id: fdollop.cwl
inputs:
- id: in_weights
  doc: properties Phylip weights file (optional)
  type: boolean?
  inputBinding:
    prefix: -weights
- id: in_anc_file
  doc: properties Ancestral states file
  type: boolean?
  inputBinding:
    prefix: -ancfile
- id: in_method
  doc: "menu       [d] Parsimony method (Values: d (Dollo); p\n(Polymorphism))"
  type: boolean?
  inputBinding:
    prefix: -method
- id: in_threshold
  doc: "float      [$(infile.discretesize)] Threshold value\n(Number 0.000 or more)"
  type: boolean?
  inputBinding:
    prefix: -threshold
- id: in_print_data
  doc: boolean    [N] Print data at start of run
  type: boolean?
  inputBinding:
    prefix: -printdata
- id: in_an_cseq
  doc: boolean    [N] Print states at all nodes of tree
  type: boolean?
  inputBinding:
    prefix: -ancseq
- id: in_step_box
  doc: boolean    [N] Print out steps in each character
  type: boolean?
  inputBinding:
    prefix: -stepbox
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
- fdollop
