class: CommandLineTool
id: makeMetaGeneProfile.pl.cwl
inputs:
- id: min
  doc: '<#> (minimum size of genes/regions to use, default: 3000) (This prevents extremely
    small regions from being used)'
  type: boolean
  inputBinding:
    prefix: -min
- id: max
  doc: '<#> (max size of genes/regions to use, default: no max)'
  type: boolean
  inputBinding:
    prefix: -max
- id: gb_in
  doc: '<#> (Number of bins in gene body, default: 50)'
  type: boolean
  inputBinding:
    prefix: -gbin
- id: g_ratio
  doc: '<#> (Ratio of gene region to flanks, default: 2)'
  type: boolean
  inputBinding:
    prefix: -gRatio
- id: bin
  doc: "<#> (Bin size for 5' and 3' flanks, default: 100)"
  type: boolean
  inputBinding:
    prefix: -bin
- id: size
  doc: "<#> (Size of 5' and 3' flanks, default: 5000)"
  type: boolean
  inputBinding:
    prefix: -size
outputs: []
cwlVersion: v1.1
baseCommand:
- makeMetaGeneProfile.pl
