class: CommandLineTool
id: getFocalPeaks.pl.cwl
inputs:
- id: in_min
  doc: '<#> (minimum focus ratio threshold, default: 0.75)'
  type: boolean
  inputBinding:
    prefix: -min
- id: in_max
  doc: '<#> (maximum focus ratio threshold, default: none)'
  type: boolean
  inputBinding:
    prefix: -max
- id: in_peaks_dot_centered_dot_txt
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- getFocalPeaks.pl
