class: CommandLineTool
id: hicCreateThresholdFile.cwl
inputs:
- id: in_range
  doc: ''
  type: string
  inputBinding:
    prefix: --range
- id: in_threshold_value
  doc: ''
  type: string
  inputBinding:
    prefix: --thresholdValue
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- hicCreateThresholdFile
