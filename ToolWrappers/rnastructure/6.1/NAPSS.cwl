class: CommandLineTool
id: NAPSS.cwl
inputs:
- id: in_pseudoknot_free
  doc: "Specify pseudoknot-free prediction mode.\nDefault is to predict pseudoknots."
  type: boolean?
  inputBinding:
    prefix: --pseudoknotFree
- id: in_constraint
  doc: "Specify a constraints file to be applied.\nDefault is to have no constraints\
    \ applied."
  type: boolean?
  inputBinding:
    prefix: --constraint
- id: in_dot_percent
  doc: "Specify a maximum percent energy difference to consider in the dotplot.\n\
    Default is 5 percent."
  type: boolean?
  inputBinding:
    prefix: --DotPercent
- id: in_maximum
  doc: "Specify a maximum number of structures per matched constraint set.\nDefault\
    \ is 100 structures."
  type: boolean?
  inputBinding:
    prefix: --maximum
- id: in_percent
  doc: "Specify a maximum percent energy difference.\nDefault is 0 which means that\
    \ all structures are outputted."
  type: boolean?
  inputBinding:
    prefix: --percent
- id: in_penalty_one
  doc: "Specify a pseudoknot penalty P1.\nDefault is 0.35 kcal/mol."
  type: boolean?
  inputBinding:
    prefix: --Penalty1
- id: in_penalty_two
  doc: "Specify a pseudoknot penalty P2.\nDefault is 0.65 kcal/mol."
  type: boolean?
  inputBinding:
    prefix: --Penalty2
- id: in_pos_paired
  doc: "Specify the name of the positions paired style output file.\nDefault is to\
    \ have no file specified."
  type: File?
  inputBinding:
    prefix: --posPaired
- id: in_shape
  doc: Specify a SHAPE data file to be used to generate pseudoenergy restraints.
  type: boolean?
  inputBinding:
    prefix: --SHAPE
- id: in_shape_intercept
  doc: "Specify an intercept used with SHAPE constraints.\nDefault is -0.60 kcal/mol."
  type: boolean?
  inputBinding:
    prefix: --SHAPEintercept
- id: in_shape_slope
  doc: "Specify a slope used with SHAPE constraints.\nDefault is 1.80 kcal/mol."
  type: boolean?
  inputBinding:
    prefix: --SHAPEslope
- id: in_window
  doc: "Specify a window size.\nDefault is 0 nucleotides.\n"
  type: boolean?
  inputBinding:
    prefix: --window
- id: in_seq_file
  doc: ''
  type: File
  inputBinding:
    position: 0
- id: in_nmr_file
  doc: ''
  type: File
  inputBinding:
    position: 1
- id: in_ct_file
  doc: ''
  type: File
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_pos_paired
  doc: "Specify the name of the positions paired style output file.\nDefault is to\
    \ have no file specified."
  type: File?
  outputBinding:
    glob: $(inputs.in_pos_paired)
hints: []
cwlVersion: v1.1
baseCommand:
- NAPSS
