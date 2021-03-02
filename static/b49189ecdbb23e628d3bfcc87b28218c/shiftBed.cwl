class: CommandLineTool
id: shiftBed.cwl
inputs:
- id: in_shift_base_pairs
  doc: "Shift the BED/GFF/VCF entry -s base pairs.\n- (Integer) or (Float, e.g. 0.1)\
    \ if used with -pct."
  type: boolean?
  inputBinding:
    prefix: -s
- id: in_shift_features_p
  doc: "Shift features on the + strand by -p base pairs.\n- (Integer) or (Float, e.g.\
    \ 0.1) if used with -pct."
  type: boolean?
  inputBinding:
    prefix: -p
- id: in_shift_features_m
  doc: "Shift features on the - strand by -m base pairs.\n- (Integer) or (Float, e.g.\
    \ 0.1) if used with -pct."
  type: boolean?
  inputBinding:
    prefix: -m
- id: in_pct
  doc: "Define -s, -m and -p as a fraction of the feature's length.\nE.g. if used\
    \ on a 1000bp feature, -s 0.50,\nwill shift the feature 500 bp \"upstream\". \
    \ Default = false."
  type: boolean?
  inputBinding:
    prefix: -pct
- id: in_header
  doc: the header from the input file prior to results.
  type: File?
  inputBinding:
    prefix: -header
- id: in_g
  doc: ''
  type: string?
  inputBinding:
    prefix: -g
- id: in_i
  doc: ''
  type: string?
  inputBinding:
    prefix: -i
- id: in_bed_tools
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_shift
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/bedtools:2.30.0--hc088bd4_0
cwlVersion: v1.1
baseCommand:
- shiftBed
