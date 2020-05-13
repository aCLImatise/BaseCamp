class: CommandLineTool
id: scrambleFasta.pl.cwl
inputs:
- id: n
  doc: '<#> (Number of scrambled output sequences, defulat: 5x input)'
  type: boolean
  inputBinding:
    prefix: -n
outputs: []
cwlVersion: v1.1
baseCommand:
- scrambleFasta.pl
