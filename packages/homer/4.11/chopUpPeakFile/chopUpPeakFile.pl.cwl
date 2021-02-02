class: CommandLineTool
id: chopUpPeakFile.pl.cwl
inputs:
- id: in_target_peak_file
  doc: ''
  type: File
  inputBinding:
    position: 0
- id: in_background_peak_file
  doc: ''
  type: File
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- chopUpPeakFile.pl
