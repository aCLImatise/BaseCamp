class: CommandLineTool
id: combineMUMs_RefSequence_GapsFile.cwl
inputs:
- id: match_sequences
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: gaps_file
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- combineMUMs
- RefSequence
- GapsFile
