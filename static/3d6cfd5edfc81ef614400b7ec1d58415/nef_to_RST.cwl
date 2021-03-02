class: CommandLineTool
id: nef_to_RST.cwl
inputs:
- id: in_nef
  doc: ': NEF file'
  type: File?
  inputBinding:
    prefix: -nef
- id: in_pdb
  doc: ': PDBFILE using AMBER nomenclature and numbering'
  type: File?
  inputBinding:
    prefix: -pdb
- id: in_map
  doc: ': MAP file  (default:map.NEF-AMBER)'
  type: File?
  inputBinding:
    prefix: -map
- id: in_rst
  doc: ':  SANDER DISANG format'
  type: File?
  inputBinding:
    prefix: -rst
- id: in_rdc
  doc: ':  SANDER DIP format'
  type: File?
  inputBinding:
    prefix: -rdc
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
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- nef_to_RST
