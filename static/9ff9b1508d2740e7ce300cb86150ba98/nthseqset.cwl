class: CommandLineTool
id: nthseqset.cwl
inputs:
- id: number
  doc: integer    [1] The number of the sequence set to output (Integer 1 or more)
  type: boolean
  inputBinding:
    prefix: -number
outputs: []
cwlVersion: v1.1
baseCommand:
- nthseqset
