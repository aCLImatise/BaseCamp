class: CommandLineTool
id: ../../../adapt_filter_coverage.sh.cwl
inputs:
- id: usage_message
  doc: usage message
  type: string
  inputBinding:
    prefix: -h
outputs: []
cwlVersion: v1.1
baseCommand:
- adapt_filter_coverage.sh
