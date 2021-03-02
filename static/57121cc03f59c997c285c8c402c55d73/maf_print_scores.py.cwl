class: CommandLineTool
id: maf_print_scores.py.cwl
inputs:
- id: in_recalculate
  doc: "don't use the score from the maf, recalculate (using\nhox70 matrix)"
  type: boolean?
  inputBinding:
    prefix: --recalculate
- id: in_l_norm
  doc: divide (normalize) score by alignment text length
  type: boolean?
  inputBinding:
    prefix: --lnorm
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- maf_print_scores.py
