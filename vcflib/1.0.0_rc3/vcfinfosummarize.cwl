class: CommandLineTool
id: vcfinfosummarize.cwl
inputs:
- id: vcf_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: field
  doc: Summarize this field in the INFO column
  type: boolean
  inputBinding:
    prefix: --field
- id: info
  doc: Store the computed statistic in this info field
  type: boolean
  inputBinding:
    prefix: --info
- id: average
  doc: Take the mean for field (default)
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
outputs: []
cwlVersion: v1.1
baseCommand:
- vcfinfosummarize
