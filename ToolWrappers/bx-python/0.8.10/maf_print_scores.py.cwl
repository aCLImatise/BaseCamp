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
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/bx-python:0.8.10--py36h5e0341f_0
cwlVersion: v1.1
baseCommand:
- maf_print_scores.py
