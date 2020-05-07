class: CommandLineTool
id: bedtools_slop.cwl
inputs:
- id: chr18_gl000207_random
  doc: '4262'
  type: string
  inputBinding:
    position: 0
- id: b
  doc: Increase the BED/GFF/VCF entry -b base pairs in each direction. - (Integer)
    or (Float, e.g. 0.1) if used with -pct.
  type: boolean
  inputBinding:
    prefix: -b
- id: l
  doc: The number of base pairs to subtract from the start coordinate. - (Integer)
    or (Float, e.g. 0.1) if used with -pct.
  type: boolean
  inputBinding:
    prefix: -l
- id: r
  doc: The number of base pairs to add to the end coordinate. - (Integer) or (Float,
    e.g. 0.1) if used with -pct.
  type: boolean
  inputBinding:
    prefix: -r
- id: s
  doc: Define -l and -r based on strand. E.g. if used, -l 500 for a negative-stranded
    feature,  it will add 500 bp downstream.  Default = false.
  type: boolean
  inputBinding:
    prefix: -s
- id: pct
  doc: Define -l and -r as a fraction of the feature's length. E.g. if used on a 1000bp
    feature, -l 0.50,  will add 500 bp "upstream".  Default = false.
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
- slop
