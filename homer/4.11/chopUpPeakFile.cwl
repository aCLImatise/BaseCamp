class: CommandLineTool
id: ../../../chopUpPeakFile.pl.cwl
inputs:
- id: target_peak_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: background_peak_file
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- chopUpPeakFile.pl
