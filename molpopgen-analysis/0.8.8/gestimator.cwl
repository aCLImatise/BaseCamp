class: CommandLineTool
id: gestimator.cwl
inputs:
- id: o
  doc: ': write results to outfile'
  type: string
  inputBinding:
    prefix: -o
- id: v
  doc: ': get verbose output'
  type: boolean
  inputBinding:
    prefix: -v
- id: m
  doc: ': max # of hits allowed per codon (default = 3)'
  type: boolean
  inputBinding:
    prefix: -m
- id: g
  doc: ': remove gaps from the whole aligment before calculating (default = FALSE)'
  type: boolean
  inputBinding:
    prefix: -g
outputs: []
cwlVersion: v1.1
baseCommand:
- gestimator
