class: CommandLineTool
id: vcfinfosummarize.cwl
inputs:
- id: in_field
  doc: Summarize this field in the INFO column
  type: boolean
  inputBinding:
    prefix: --field
- id: in_info
  doc: Store the computed statistic in this info field
  type: boolean
  inputBinding:
    prefix: --info
- id: in_average
  doc: Take the mean for field (default)
  type: boolean
  inputBinding:
    prefix: --average
- id: in_median
  doc: Use the median
  type: boolean
  inputBinding:
    prefix: --median
- id: in_min
  doc: Use the min
  type: boolean
  inputBinding:
    prefix: --min
- id: in_max
  doc: Use the max
  type: boolean
  inputBinding:
    prefix: --max
- id: in_vcf_file
  doc: ''
  type: File
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- vcfinfosummarize
