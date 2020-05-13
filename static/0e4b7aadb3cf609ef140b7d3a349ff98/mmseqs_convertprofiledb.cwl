class: CommandLineTool
id: mmseqs_convertprofiledb.cwl
inputs:
- id: profile_type
  doc: '0               0: HMM (HHsuite) 1: PSSM or 2: HMMER3                       '
  type: boolean
  inputBinding:
    prefix: --profile-type
- id: sub_mat
  doc: 'blosum62.out    amino acid substitution matrix file                         '
  type: boolean
  inputBinding:
    prefix: --sub-mat
- id: threads
  doc: 8               number of cores used for the computation (uses all cores by
    default)
  type: boolean
  inputBinding:
    prefix: --threads
- id: v
  doc: '3               verbosity level: 0=nothing, 1: +errors, 2: +warnings, 3: +info'
  type: boolean
  inputBinding:
    prefix: -v
outputs: []
cwlVersion: v1.1
baseCommand:
- mmseqs
- convertprofiledb
