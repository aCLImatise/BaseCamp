class: CommandLineTool
id: fpenny.cwl
inputs:
- id: in_weights
  doc: properties Phylip weights file (optional)
  type: boolean
  inputBinding:
    prefix: -weights
- id: in_anc_file
  doc: properties Phylip ancestral states file (optional)
  type: boolean
  inputBinding:
    prefix: -ancfile
- id: in_mix_file
  doc: properties Phylip mix output file (optional)
  type: File
  inputBinding:
    prefix: -mixfile
- id: in_method
  doc: "menu       [Wagner] Choose the method to use (Values:\nWag (Wagner); Cam (Camin-Sokal);\
    \ Mix\n(Mixed))"
  type: boolean
  inputBinding:
    prefix: -method
- id: in_out_gr_no
  doc: "integer    [0] Species number to use as outgroup\n(Integer 0 or more)"
  type: boolean
  inputBinding:
    prefix: -outgrno
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
- id: in_simple
  doc: boolean    Branch and bound is simple
  type: boolean
  inputBinding:
    prefix: -simple
- id: in_threshold
  doc: "float      [$(infile.discretesize)] Threshold value\n(Number 1.000 or more)"
  type: boolean
  inputBinding:
    prefix: -threshold
- id: in_print_data
  doc: boolean    [N] Print data at start of run
  type: boolean
  inputBinding:
    prefix: -printdata
- id: in_step_box
  doc: boolean    [N] Print out steps in each site
  type: boolean
  inputBinding:
    prefix: -stepbox
- id: in_an_cseq
  doc: boolean    [N] Print states at all nodes of tree
  type: boolean
  inputBinding:
    prefix: -ancseq
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_mix_file
  doc: properties Phylip mix output file (optional)
  type: File
  outputBinding:
    glob: $(inputs.in_mix_file)
cwlVersion: v1.1
baseCommand:
- fpenny
