class: CommandLineTool
id: _fdolpenny.cwl
inputs:
- id: in_weights
  doc: properties Weights file
  type: boolean
  inputBinding:
    prefix: -weights
- id: in_anc_file
  doc: properties Ancestral states file
  type: boolean
  inputBinding:
    prefix: -ancfile
- id: in_do_threshold
  doc: toggle     [N] Use threshold parsimony
  type: boolean
  inputBinding:
    prefix: -dothreshold
- id: in_how_many
  doc: "integer    [1000] How many groups of trees (Any integer\nvalue)"
  type: boolean
  inputBinding:
    prefix: -howmany
- id: in_how_often
  doc: "integer    [100] How often to report, in trees (Any\ninteger value)"
  type: boolean
  inputBinding:
    prefix: -howoften
- id: in_method
  doc: "menu       [d] Parsimony method (Values: d (Dollo); p\n(Polymorphism))"
  type: boolean
  inputBinding:
    prefix: -method
- id: in_print_data
  doc: boolean    [N] Print data at start of run
  type: boolean
  inputBinding:
    prefix: -printdata
- id: in_an_cseq
  doc: boolean    [N] Print states at all nodes of tree
  type: boolean
  inputBinding:
    prefix: -ancseq
- id: in_step_box
  doc: boolean    [N] Print out steps in each character
  type: boolean
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
cwlVersion: v1.1
baseCommand:
- _fdolpenny
