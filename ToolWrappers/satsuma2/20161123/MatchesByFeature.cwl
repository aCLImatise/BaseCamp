class: CommandLineTool
id: MatchesByFeature.cwl
inputs:
- id: in_gff_three_file
  doc: ''
  type: long
  inputBinding:
    position: 0
- id: in_gff_features
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_match_files
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- MatchesByFeature
