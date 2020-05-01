#!/usr/bin/env cwl-runner

baseCommand:
- mahalanobis_distance.py
class: CommandLineTool
cwlVersion: v1.0
id: mahalanobis_distance.py
inputs:
- doc: The thresholdfor standard distributions. The default is 0.95.
  id: per
  inputBinding:
    prefix: --per
  type: string
- doc: Value of lambda for the penalty.
  id: penalty
  inputBinding:
    prefix: --penalty
  type: string
- doc: Log file
  id: log
  inputBinding:
    prefix: --log
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
