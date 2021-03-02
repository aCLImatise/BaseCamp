class: CommandLineTool
id: makeMetaGeneProfile.pl.cwl
inputs:
- id: in_min
  doc: "<#> (minimum size of genes/regions to use, default: 3000)\n(This prevents\
    \ extremely small regions from being used)"
  type: boolean?
  inputBinding:
    prefix: -min
- id: in_max
  doc: '<#> (max size of genes/regions to use, default: no max)'
  type: boolean?
  inputBinding:
    prefix: -max
- id: in_gb_in
  doc: '<#> (Number of bins in gene body, default: 50)'
  type: boolean?
  inputBinding:
    prefix: -gbin
- id: in_g_ratio
  doc: '<#> (Ratio of gene region to flanks, default: 2)'
  type: boolean?
  inputBinding:
    prefix: -gRatio
- id: in_bin
  doc: "<#> (Bin size for 5' and 3' flanks, default: 100)"
  type: boolean?
  inputBinding:
    prefix: -bin
- id: in_size
  doc: "<#> (Size of 5' and 3' flanks, default: 5000)"
  type: boolean?
  inputBinding:
    prefix: -size
- id: in_peak_file
  doc: ''
  type: File
  inputBinding:
    position: 0
- id: in_genome
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- makeMetaGeneProfile.pl
