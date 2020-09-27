class: CommandLineTool
id: gestimator.cwl
inputs:
- id: in_write_results_outfile
  doc: ': write results to outfile'
  type: string
  inputBinding:
    prefix: -o
- id: in__verbose_output
  doc: ': get verbose output'
  type: boolean
  inputBinding:
    prefix: -v
- id: in_max_hits_allowed
  doc: ': max # of hits allowed per codon (default = 3)'
  type: boolean
  inputBinding:
    prefix: -m
- id: in_remove_gaps_whole
  doc: ': remove gaps from the whole aligment before calculating (default = FALSE)'
  type: boolean
  inputBinding:
    prefix: -g
- id: in_i
  doc: ''
  type: File
  inputBinding:
    prefix: -i
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- gestimator
