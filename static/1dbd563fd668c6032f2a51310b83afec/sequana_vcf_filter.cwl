class: CommandLineTool
id: sequana_vcf_filter.cwl
inputs:
- id: in_or
  doc: 'DP>30&<60  # to keep only values in the range [30-60]'
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- sequana_vcf_filter
