class: CommandLineTool
id: bedtools_complement.cwl
inputs:
- id: chr18_gl000207_random
  doc: '4262'
  type: string
  inputBinding:
    position: 0
- id: l
  doc: Limit output to solely the chromosomes with records in the input file.
  type: boolean
  inputBinding:
    prefix: -L
outputs: []
cwlVersion: v1.1
baseCommand:
- bedtools
- complement
