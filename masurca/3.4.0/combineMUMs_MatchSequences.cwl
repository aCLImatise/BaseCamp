class: CommandLineTool
id: combineMUMs_MatchSequences.cwl
inputs:
- id: ref_sequence
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: match_sequences
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: gaps_file
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- combineMUMs
- MatchSequences
