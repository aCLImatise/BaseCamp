class: CommandLineTool
id: nthseq.cwl
inputs:
- id: number
  doc: integer    [1] The number of the sequence to output (Integer 1 or more)
  type: boolean
  inputBinding:
    prefix: -number
outputs: []
cwlVersion: v1.1
baseCommand:
- nthseq
