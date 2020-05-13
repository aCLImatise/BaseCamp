class: CommandLineTool
id: mahalanobis_distance.py.cwl
inputs:
- id: per
  doc: The thresholdfor standard distributions. The default is 0.95.
  type: string
  inputBinding:
    prefix: --per
- id: penalty
  doc: Value of lambda for the penalty.
  type: string
  inputBinding:
    prefix: --penalty
- id: log
  doc: Log file
  type: string
  inputBinding:
    prefix: --log
- id: palette
  doc: Name of the palette to use.
  type: string
  inputBinding:
    prefix: --palette
- id: color
  doc: Name of a valid color scheme on the selected palette
  type: string
  inputBinding:
    prefix: --color
outputs: []
cwlVersion: v1.1
baseCommand:
- mahalanobis_distance.py
