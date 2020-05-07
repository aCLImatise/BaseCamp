class: CommandLineTool
id: checkv_quality_summary.cwl
inputs:
- id: quiet
  doc: 'Suppress logging messages (default: False)'
  type: boolean
  inputBinding:
    prefix: --quiet
outputs: []
cwlVersion: v1.1
baseCommand:
- checkv
- quality_summary
