class: CommandLineTool
id: maf_print_scores.py.cwl
inputs:
- id: recalculate
  doc: don't use the score from the maf, recalculate (using hox70 matrix)
  type: boolean
  inputBinding:
    prefix: --recalculate
- id: l_norm
  doc: divide (normalize) score by alignment text length
  type: boolean
  inputBinding:
    prefix: --lnorm
outputs: []
cwlVersion: v1.1
baseCommand:
- maf_print_scores.py
