class: CommandLineTool
id: combineMUMs_RefSequence_MatchSequences.cwl
inputs:
- id: gaps_file
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- combineMUMs
- RefSequence
- MatchSequences
