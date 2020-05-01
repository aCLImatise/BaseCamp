#!/usr/bin/env cwl-runner

baseCommand:
- sum_prob.py
class: CommandLineTool
cwlVersion: v1.0
id: sum_prob.py
inputs:
- doc: any probabilities below this threshold are set to the threshold value. (default
    1e-18)
  id: threshold
  inputBinding:
    prefix: --threshold
  type: boolean
- doc: input file containing probabilities (reads  from stdin by default)
  id: input
  inputBinding:
    prefix: --input
  type: boolean
- doc: determines how much debug output.
  id: debug_level
  inputBinding:
    prefix: --debug_level
  type: boolean
