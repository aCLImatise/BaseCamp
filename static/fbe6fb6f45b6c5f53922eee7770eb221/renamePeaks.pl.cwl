class: CommandLineTool
id: renamePeaks.pl.cwl
inputs:
- id: in_peak_file
  doc: ''
  type: File
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- renamePeaks.pl
