class: CommandLineTool
id: ../../../bedtools_shift.cwl
inputs:
- id: shift_base_pairs
  doc: Shift the BED/GFF/VCF entry -s base pairs. - (Integer) or (Float, e.g. 0.1)
    if used with -pct.
  type: boolean
  inputBinding:
    prefix: -s
- id: shift_features_p
  doc: Shift features on the + strand by -p base pairs. - (Integer) or (Float, e.g.
    0.1) if used with -pct.
  type: boolean
  inputBinding:
    prefix: -p
- id: shift_features_m
  doc: Shift features on the - strand by -m base pairs. - (Integer) or (Float, e.g.
    0.1) if used with -pct.
  type: boolean
  inputBinding:
    prefix: -m
- id: pct
  doc: Define -s, -m and -p as a fraction of the feature's length. E.g. if used on
    a 1000bp feature, -s 0.50,  will shift the feature 500 bp "upstream".  Default
    = false.
  type: boolean
  inputBinding:
    prefix: -pct
- id: header
  doc: the header from the input file prior to results.
  type: string
  inputBinding:
    prefix: -header
- id: i
  doc: ''
  type: string
  inputBinding:
    prefix: -i
- id: g
  doc: ''
  type: string
  inputBinding:
    prefix: -g
outputs: []
cwlVersion: v1.1
baseCommand:
- bedtools
- shift
