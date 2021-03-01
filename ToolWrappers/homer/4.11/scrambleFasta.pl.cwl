class: CommandLineTool
id: scrambleFasta.pl.cwl
inputs:
- id: in_number_scrambled_output
  doc: '<#> (Number of scrambled output sequences, defulat: 5x input)'
  type: boolean?
  inputBinding:
    prefix: -n
- id: in_input_dot_fast_a
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- scrambleFasta.pl
