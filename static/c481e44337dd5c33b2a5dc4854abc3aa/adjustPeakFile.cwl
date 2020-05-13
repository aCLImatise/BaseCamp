class: CommandLineTool
id: adjustPeakFile.pl.cwl
inputs:
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
