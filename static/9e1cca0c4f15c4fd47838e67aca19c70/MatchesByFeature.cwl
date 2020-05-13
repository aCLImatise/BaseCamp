class: CommandLineTool
id: MatchesByFeature.cwl
inputs:
- id: gff3_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: gff_features
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: match_files
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- MatchesByFeature
