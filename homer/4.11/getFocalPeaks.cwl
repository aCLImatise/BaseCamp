class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/getFocalPeaks.pl.cwl
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
- id: peaks_dot_centered_dot_txt
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- getFocalPeaks.pl
