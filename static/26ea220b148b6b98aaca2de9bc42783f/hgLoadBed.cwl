class: CommandLineTool
id: hgLoadBed.cwl
inputs:
- id: fill_in_score
  doc: score value is zero, then use column 'colName' to fill in the score column
    (from minScore-1000)
  type: string
  inputBinding:
    prefix: -fillInScore
- id: min_score
  doc: for score field for -fillInScore option (default 100)
  type: string
  inputBinding:
    prefix: -minScore
- id: verbose
  doc: for extra information to STDERR
  type: string
  inputBinding:
    prefix: '- verbose'
- id: dot_is_null
  doc: specified field is a '.' the replace it with -1
  type: string
  inputBinding:
    prefix: -dotIsNull
- id: line_limit
  doc: file to this number of lines
  type: string
  inputBinding:
    prefix: -lineLimit
outputs: []
cwlVersion: v1.1
baseCommand:
- hgLoadBed
