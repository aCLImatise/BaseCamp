class: CommandLineTool
id: ../../../motif2Logo.pl.cwl
inputs:
- id: pdf
  doc: '(create a pdf: "motif file".pdf: default creates a PNG image)'
  type: boolean
  inputBinding:
    prefix: -pdf
- id: ns
  doc: '<#> (Number of sequences to feed seqlogo: default 100)'
  type: boolean
  inputBinding:
    prefix: -ns
- id: bit
  doc: '(scale logo by information content: default scales nucleotides to probability)'
  type: boolean
  inputBinding:
    prefix: -bit
- id: prefix_default_file
  doc: '(prefix of output file, i.e. outputprefix.png : default, motif file)'
  type: string
  inputBinding:
    prefix: -o
- id: motif_file
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- motif2Logo.pl
