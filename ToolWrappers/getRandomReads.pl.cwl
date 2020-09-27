class: CommandLineTool
id: getRandomReads.pl.cwl
inputs:
- id: in_tag_directory
  doc: ''
  type: Directory
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- getRandomReads.pl
