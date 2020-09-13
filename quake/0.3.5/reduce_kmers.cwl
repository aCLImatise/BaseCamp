class: CommandLineTool
id: ../../../reduce_kmers.cwl
inputs:
- id: in_five_five_four_eight_zero_seven_two_four_zero
  doc: ''
  type: boolean
  inputBinding:
    prefix: '-554807240'
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- reduce-kmers
