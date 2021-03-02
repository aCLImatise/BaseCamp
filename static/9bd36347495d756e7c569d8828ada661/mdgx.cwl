class: CommandLineTool
id: mdgx.cwl
inputs:
- id: in_input
  doc: ':   print all command line input options'
  type: boolean?
  inputBinding:
    prefix: -INPUT
- id: in_i_file
  doc: ':   documentation on input file format'
  type: boolean?
  inputBinding:
    prefix: -IFILE
- id: in_files
  doc: ":   print descriptions of &files namelist variables (these may also\nbe entered\
    \ as command line input)"
  type: boolean?
  inputBinding:
    prefix: -FILES
- id: in_cntrl
  doc: ":   print descriptions of &cntrl namelist variables (most are similar\nto\
    \ SANDER variables, but some are unique to mdgx and some SANDER\nvariables are\
    \ not supported)"
  type: boolean?
  inputBinding:
    prefix: -CNTRL
- id: in_ewald
  doc: ':   print &ewald namelist variables'
  type: boolean?
  inputBinding:
    prefix: -EWALD
- id: in_force
  doc: ':   print &force namelist variables'
  type: boolean?
  inputBinding:
    prefix: -FORCE
- id: in_fit_q
  doc: ':    print &fitq (charge fitting) namelist variables'
  type: boolean?
  inputBinding:
    prefix: -FITQ
- id: in_param
  doc: ':   print &param (bonded term fitting) namelist variables'
  type: boolean?
  inputBinding:
    prefix: -PARAM
- id: in_ipo_lq
  doc: ':   print &ipolq (Implicitly Polarized Charge) namelist variables'
  type: boolean?
  inputBinding:
    prefix: -IPOLQ
- id: in_configs
  doc: ': print &configs (small molecule conformation generation) keywords'
  type: boolean?
  inputBinding:
    prefix: -CONFIGS
- id: in_ppt_d
  doc: ':    print &pptd (small oligomer molecular dynamics) keywords'
  type: boolean?
  inputBinding:
    prefix: -PPTD
- id: in_attr
  doc: ':    attributions of certain aspects of the code, with references'
  type: boolean?
  inputBinding:
    prefix: -ATTR
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- mdgx
