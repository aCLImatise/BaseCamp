class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/vcfsample2info.cwl
inputs:
- id: field
  doc: Add information about this field in samples to INFO column
  type: boolean
  inputBinding:
    prefix: --field
- id: info
  doc: Store the computed statistic in this info field
  type: boolean
  inputBinding:
    prefix: --info
- id: average
  doc: Take the mean of samples for field (default)
  type: boolean
  inputBinding:
    prefix: --average
- id: median
  doc: Use the median
  type: boolean
  inputBinding:
    prefix: --median
- id: min
  doc: Use the min
  type: boolean
  inputBinding:
    prefix: --min
- id: max
  doc: Use the max
  type: boolean
  inputBinding:
    prefix: --max
- id: vcf_file
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- vcfsample2info
