class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/scrambleFasta.pl.cwl
inputs:
- id: number_scrambled_output
  doc: '<#> (Number of scrambled output sequences, defulat: 5x input)'
  type: boolean
  inputBinding:
    prefix: -n
- id: input_dot_fast_a
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- scrambleFasta.pl
