#!/usr/bin/env cwl-runner

baseCommand:
- _fconsense
class: CommandLineTool
cwlVersion: v1.0
id: _fconsense
inputs:
- doc: 'menu       [mre] Consensus method (Values: s (strict consensus tree); mr (Majority
    Rule); mre (Majority Rule (extended)); ml (Minimum fraction (0.5 to 1.0)))'
  id: method
  inputBinding:
    prefix: -method
  type: boolean
