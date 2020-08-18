class: CommandLineTool
id: ../../../bedtools_slop.cwl
inputs:
- id: increase_bedgffvcf_pairs
  doc: Increase the BED/GFF/VCF entry -b base pairs in each direction. - (Integer)
    or (Float, e.g. 0.1) if used with -pct.
  type: boolean
  inputBinding:
    prefix: -b
- id: number_subtract_subtract
  doc: The number of base pairs to subtract from the start coordinate. - (Integer)
    or (Float, e.g. 0.1) if used with -pct.
  type: boolean
  inputBinding:
    prefix: -l
- id: number_add_add
  doc: The number of base pairs to add to the end coordinate. - (Integer) or (Float,
    e.g. 0.1) if used with -pct.
  type: boolean
  inputBinding:
    prefix: -r
- id: define_l_r_based
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
- slop
