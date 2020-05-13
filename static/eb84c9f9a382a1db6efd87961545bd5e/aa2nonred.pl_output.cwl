class: CommandLineTool
id: aa2nonred.pl_output.fa.cwl
inputs:
- id: input_fa
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: output_fa
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- aa2nonred.pl
- output.fa
