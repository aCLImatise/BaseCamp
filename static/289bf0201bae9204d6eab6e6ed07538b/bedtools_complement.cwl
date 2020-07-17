class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/bedtools_complement.cwl
inputs:
- id: limit_output_solely
  doc: Limit output to solely the chromosomes with records in the input file.
  type: boolean
  inputBinding:
    prefix: -L
- id: i
  doc: ''
  type: string
  inputBinding:
    prefix: -i
- id: g
  doc: ''
  type: string
  inputBinding:
    prefix: -g
outputs: []
cwlVersion: v1.1
baseCommand:
- bedtools
- complement
