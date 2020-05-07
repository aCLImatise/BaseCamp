class: CommandLineTool
id: checkCoverageGaps.cwl
inputs:
- id: database
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: track_n
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: all_parts
  doc: If set then include _hap and _random and other wierd chroms
  type: boolean
  inputBinding:
    prefix: -allParts
- id: female
  doc: set then don't check chrY
  type: string
  inputBinding:
    prefix: -female
- id: no_comma
  doc: "'t put commas in biggest gap output"
  type: boolean
  inputBinding:
    prefix: -noComma
outputs: []
cwlVersion: v1.1
baseCommand:
- checkCoverageGaps
