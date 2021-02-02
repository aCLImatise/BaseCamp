class: CommandLineTool
id: rsat_compare_features.cwl
inputs:
- id: in_files
  doc: considered as input files.
  type: string
  inputBinding:
    prefix: -files
- id: in_compare_features
  doc: "\e[1mDESCRIPTION\e[0m"
  type: string
  inputBinding:
    position: 0
- id: in_util
  doc: "\e[1mUSAGE\e[0m"
  type: string
  inputBinding:
    position: 0
- id: in_negative_dot
  doc: "\e[1mOUTPUT TYPES\e[0m"
  type: string
  inputBinding:
    position: 0
- id: in_inter_len
  doc: Length (in residues) of the intersection between two features.
  type: string
  inputBinding:
    position: 0
- id: in_inter_cov
  doc: "Coverage of the intersection between two features. The coverage\n(inter_cov)\
    \ is defined as\ninter_cov = inter_len / inter_pair\nwhere inter_len is the length\
    \ of the intersection, pair_len is\nthe total length covered by the pair of intersecting\
    \ features."
  type: string
  inputBinding:
    position: 1
- id: in_feature_map
  doc: convert-features
  type: string
  inputBinding:
    position: 0
- id: in_all_coordinates
  doc: "Add columns with the coordinates of feature from f1 and f2 when\nthere is\
    \ an intersection. If features belong to set f2.not.f1,\nindicate NA in the f1\
    \ columns (and reciprocally).\n"
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- rsat
- compare-features
