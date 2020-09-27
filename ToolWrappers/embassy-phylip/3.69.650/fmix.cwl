class: CommandLineTool
id: fmix.cwl
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
- id: in_mix_file
  doc: properties Mixture file
  type: boolean
  inputBinding:
    prefix: -mixfile
- id: in_method
  doc: "menu       [Wagner] Choose the method to use (Values: w\n(Wagner); c (Camin-Sokal);\
    \ m (Mixed))"
  type: boolean
  inputBinding:
    prefix: -method
- id: in_out_gr_no
  doc: "integer    [0] Species number to use as outgroup\n(Integer 0 or more)"
  type: boolean
  inputBinding:
    prefix: -outgrno
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
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- fmix
