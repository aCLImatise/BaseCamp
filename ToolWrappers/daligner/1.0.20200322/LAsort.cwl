class: CommandLineTool
id: LAsort.cwl
inputs:
- id: in_verbose_mode_output
  doc: ': Verbose mode, output statistics as proceed.'
  type: boolean
  inputBinding:
    prefix: -v
- id: in_sort_areadaposition_pairs
  doc: ": sort .las by A-read,A-position pairs for map usecase\noff => sort .las by\
    \ A,B-read pairs for overlap piles\n"
  type: boolean
  inputBinding:
    prefix: -a
- id: in_va
  doc: ''
  type: boolean
  inputBinding:
    prefix: -va
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- LAsort
