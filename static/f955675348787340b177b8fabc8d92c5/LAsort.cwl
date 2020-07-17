class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/LAsort.cwl
inputs:
- id: verbose_mode_output
  doc: ': Verbose mode, output statistics as proceed.'
  type: boolean
  inputBinding:
    prefix: -v
- id: sort_areadaposition_pairs
  doc: ': sort .las by A-read,A-position pairs for map usecase off => sort .las by
    A,B-read pairs for overlap piles'
  type: boolean
  inputBinding:
    prefix: -a
- id: va
  doc: ''
  type: boolean
  inputBinding:
    prefix: -va
outputs: []
cwlVersion: v1.1
baseCommand:
- LAsort
