class: CommandLineTool
id: LAsort.cwl
inputs:
- id: v
  doc: ': Verbose mode, output statistics as proceed.'
  type: boolean
  inputBinding:
    prefix: -v
- id: a
  doc: ': sort .las by A-read,A-position pairs for map usecase off => sort .las by
    A,B-read pairs for overlap piles'
  type: boolean
  inputBinding:
    prefix: -a
outputs: []
cwlVersion: v1.1
baseCommand:
- LAsort
