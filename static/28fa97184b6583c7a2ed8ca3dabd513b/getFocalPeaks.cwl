class: CommandLineTool
id: getFocalPeaks.pl.cwl
inputs:
- id: min
  doc: '<#> (minimum focus ratio threshold, default: 0.75)'
  type: boolean
  inputBinding:
    prefix: -min
- id: max
  doc: '<#> (maximum focus ratio threshold, default: none)'
  type: boolean
  inputBinding:
    prefix: -max
outputs: []
cwlVersion: v1.1
baseCommand:
- getFocalPeaks.pl
