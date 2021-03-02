class: CommandLineTool
id: tag2pos.pl.cwl
inputs:
- id: in_tag_file
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
- tag2pos.pl
