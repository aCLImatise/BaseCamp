class: CommandLineTool
id: adjustPeakFile.pl.cwl
inputs:
- id: in_size
  doc: <#> (resize peak [around center] to this size, supports -size <#,#>)
  type: boolean
  inputBinding:
    prefix: -size
- id: in_r_size
  doc: <#> (resize peak by this relative size, supports -size <#,#>)
  type: boolean
  inputBinding:
    prefix: -rsize
- id: in_move
  doc: '<#> (move peak [relative to strand], default: 0)'
  type: boolean
  inputBinding:
    prefix: -move
- id: in_five_p
  doc: (recenter peak on 5' end of region)
  type: boolean
  inputBinding:
    prefix: -5p
- id: in_three_p
  doc: (recenter peak on 3' end of region)
  type: boolean
  inputBinding:
    prefix: -3p
- id: in_ends
  doc: (get both 5' and 3' ends - 3' ends will be flipped)
  type: boolean
  inputBinding:
    prefix: -ends
- id: in_flip_strand
  doc: (change strand of peak)
  type: boolean
  inputBinding:
    prefix: -flipStrand
- id: in_min
  doc: '<#> (remove peaks smaller than #)'
  type: boolean
  inputBinding:
    prefix: -min
- id: in_max
  doc: '<#> (remove peaks larger than #)'
  type: boolean
  inputBinding:
    prefix: -max
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- adjustPeakFile.pl
