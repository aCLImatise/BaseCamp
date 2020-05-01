#!/usr/bin/env cwl-runner

baseCommand:
- standardized_euclidean_distance.py
class: CommandLineTool
cwlVersion: v1.0
id: standardized_euclidean_distance.py
inputs:
- doc: The threshold for standard distributions. The default is 0.95.
  id: per
  inputBinding:
    prefix: --per
  type: string
- doc: Name of the palette to use.
  id: palette
  inputBinding:
    prefix: --palette
  type: string
- doc: Name of a valid color scheme on the selected palette
  id: color
  inputBinding:
    prefix: --color
  type: string
