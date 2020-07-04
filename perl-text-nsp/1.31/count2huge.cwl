class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/count2huge.pl.cwl
inputs:
- id: split
  doc: 'Split the bigrams list into smaller pieces. Each file has N bigrams. N is
    an integer (N>=1). '
  type: string
  inputBinding:
    prefix: --split
- id: source
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: destination_dir
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- count2huge.pl
