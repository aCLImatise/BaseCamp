class: CommandLineTool
id: chopify.pl.cwl
inputs:
- id: in_peak_slash_bed_file
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
- chopify.pl
