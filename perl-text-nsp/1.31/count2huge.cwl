class: CommandLineTool
id: count2huge.pl.cwl
inputs:
- id: options
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: source
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: destination_dir
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: split
  doc: 'Split the bigrams list into smaller pieces. Each file has N bigrams. N is
    an integer (N>=1). '
  type: string
  inputBinding:
    prefix: --split
outputs: []
cwlVersion: v1.1
baseCommand:
- count2huge.pl
