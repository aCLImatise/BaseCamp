class: CommandLineTool
id: ../../../adjustPeakFile.pl.cwl
inputs:
- id: size
  doc: <#> (resize peak [around center] to this size, supports -size <#,#>)
  type: boolean
  inputBinding:
    prefix: -size
- id: r_size
  doc: <#> (resize peak by this relative size, supports -size <#,#>)
  type: boolean
  inputBinding:
    prefix: -rsize
- id: move
  doc: '<#> (move peak [relative to strand], default: 0)'
  type: boolean
  inputBinding:
    prefix: -move
- id: five_p
  doc: (recenter peak on 5' end of region)
  type: boolean
  inputBinding:
    prefix: -5p
- id: three_p
  doc: (recenter peak on 3' end of region)
  type: boolean
  inputBinding:
    prefix: -3p
- id: ends
  doc: (get both 5' and 3' ends - 3' ends will be flipped)
  type: boolean
  inputBinding:
    prefix: -ends
- id: flip_strand
  doc: (change strand of peak)
  type: boolean
  inputBinding:
    prefix: -flipStrand
- id: min
  doc: '<#> (remove peaks smaller than #)'
  type: boolean
  inputBinding:
    prefix: -min
- id: max
  doc: '<#> (remove peaks larger than #)'
  type: boolean
  inputBinding:
    prefix: -max
outputs: []
cwlVersion: v1.1
baseCommand:
- adjustPeakFile.pl
