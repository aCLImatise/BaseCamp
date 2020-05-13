class: CommandLineTool
id: standardized_euclidean_distance.py.cwl
inputs:
- id: per
  doc: The threshold for standard distributions. The default is 0.95.
  type: string
  inputBinding:
    prefix: --per
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
- standardized_euclidean_distance.py
