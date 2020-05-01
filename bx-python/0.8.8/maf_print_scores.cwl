#!/usr/bin/env cwl-runner

baseCommand:
- maf_print_scores.py
class: CommandLineTool
cwlVersion: v1.0
id: maf_print_scores.py
inputs:
- doc: don't use the score from the maf, recalculate (using hox70 matrix)
  id: recalculate
  inputBinding:
    prefix: --recalculate
  type: boolean
- doc: divide (normalize) score by alignment text length
  id: l_norm
  inputBinding:
    prefix: --lnorm
  type: boolean
