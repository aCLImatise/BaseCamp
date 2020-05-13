class: CommandLineTool
id: checkv_quality_summary_output.cwl
inputs:
- id: quiet
  doc: ''
  type: boolean
  inputBinding:
    prefix: --quiet
outputs: []
cwlVersion: v1.1
baseCommand:
- checkv
- quality_summary
- output
