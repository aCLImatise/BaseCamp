class: CommandLineTool
id: checkPeakFile.pl.cwl
inputs:
- id: in_peak_slash_pos_file
  doc: ''
  type: File
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- checkPeakFile.pl
