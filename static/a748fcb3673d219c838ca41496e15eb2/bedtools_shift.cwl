class: CommandLineTool
id: bedtools_shift.cwl
inputs:
- id: chr18_gl000207_random
  doc: '4262'
  type: string
  inputBinding:
    position: 0
- id: s
  doc: Shift the BED/GFF/VCF entry -s base pairs. - (Integer) or (Float, e.g. 0.1)
    if used with -pct.
  type: boolean
  inputBinding:
    prefix: -s
- id: p
  doc: Shift features on the + strand by -p base pairs. - (Integer) or (Float, e.g.
    0.1) if used with -pct.
  type: boolean
  inputBinding:
    prefix: -p
- id: m
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
outputs: []
cwlVersion: v1.1
baseCommand:
- bedtools
- shift
