class: CommandLineTool
id: aa2nonred.pl_input.fa.cwl
inputs:
- id: output_fa
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- aa2nonred.pl
- input.fa
