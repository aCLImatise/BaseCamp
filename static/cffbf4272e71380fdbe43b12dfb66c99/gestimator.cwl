class: CommandLineTool
id: ../../../gestimator.cwl
inputs:
- id: write_results_outfile
  doc: ': write results to outfile'
  type: string
  inputBinding:
    prefix: -o
- id: get_verbose_output
  doc: ': get verbose output'
  type: boolean
  inputBinding:
    prefix: -v
- id: max_hits_allowed
  doc: ': max # of hits allowed per codon (default = 3)'
  type: boolean
  inputBinding:
    prefix: -m
- id: remove_gaps_whole
  doc: ': remove gaps from the whole aligment before calculating (default = FALSE)'
  type: boolean
  inputBinding:
    prefix: -g
- id: i
  doc: ''
  type: string
  inputBinding:
    prefix: -i
outputs: []
cwlVersion: v1.1
baseCommand:
- gestimator
