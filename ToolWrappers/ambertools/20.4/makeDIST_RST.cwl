class: CommandLineTool
id: makeDIST_RST.cwl
inputs:
- id: in_up_b
  doc: ': 7-col_NOE (necessary) distance bound file, OR'
  type: File?
  inputBinding:
    prefix: -upb
- id: in_ual
  doc: ': 8-col_UAL (necessary) upper/lower file, OR'
  type: File?
  inputBinding:
    prefix: -ual
- id: in_vol
  doc: ': 7-col_VOL (necessary) VOLUME file, one or more volumes'
  type: File?
  inputBinding:
    prefix: -vol
- id: in_pdb
  doc: ': PDBFILE using AMBER nomenclature and numbering'
  type: File?
  inputBinding:
    prefix: -pdb
- id: in_map
  doc: ': MAP file  (default:map.DG-AMBER)'
  type: File?
  inputBinding:
    prefix: -map
- id: in_dgm
  doc: ':  DGEOM95 restraint format'
  type: File?
  inputBinding:
    prefix: -dgm
- id: in_rst
  doc: ':  SANDER restraint format'
  type: File?
  inputBinding:
    prefix: -rst
- id: in_rm_six
  doc: ':  DISGEO/NOEVIO format'
  type: File?
  inputBinding:
    prefix: -rm6
- id: in_svf
  doc: ':  Sander Volume Format'
  type: File?
  inputBinding:
    prefix: -svf
- id: in_no_corr
  doc: (do not correct upper bound for r**-6 averaging)
  type: boolean?
  inputBinding:
    prefix: -nocorr
- id: in_a_ltd_is
  doc: (use alternative form for the distance restraints)
  type: boolean?
  inputBinding:
    prefix: -altdis
- id: in_report
  doc: (gives you short runtime diagnostic output)
  type: boolean?
  inputBinding:
    prefix: -report
- id: in_i_mix
  doc: (for -vol input, says which mixing time; default is 1)
  type: boolean?
  inputBinding:
    prefix: -imix
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- makeDIST_RST
