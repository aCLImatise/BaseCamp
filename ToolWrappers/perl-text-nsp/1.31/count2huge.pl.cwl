class: CommandLineTool
id: count2huge.pl.cwl
inputs:
- id: in_split
  doc: "Split the bigrams list into smaller pieces. Each file has\nN bigrams. N is\
    \ an integer (N>=1)."
  type: long
  inputBinding:
    prefix: --split
- id: in_source
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_destination_dir
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- count2huge.pl
