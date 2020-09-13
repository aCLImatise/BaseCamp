class: CommandLineTool
id: ../../../mdout2pymbar.pl.cwl
inputs:
- id: in_zero_dot_zero_zero_zero_zero
  doc: 0.000000   1.0000000e+00
  type: double
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- mdout2pymbar.pl
