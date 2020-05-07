class: CommandLineTool
id: dbiprof.cwl
inputs:
- id: number
  doc: show top N, defaults to 10
  type: string
  inputBinding:
    prefix: -number
- id: sort
  doc: sort by S, defaults to total
  type: string
  inputBinding:
    prefix: -sort
- id: reverse
  doc: reverse the sort
  type: boolean
  inputBinding:
    prefix: -reverse
- id: match
  doc: =V       for filtering, see docs
  type: string
  inputBinding:
    prefix: -match
- id: exclude
  doc: =V     for filtering, see docs
  type: string
  inputBinding:
    prefix: -exclude
- id: case_sensitive
  doc: for -match and -exclude
  type: boolean
  inputBinding:
    prefix: -case_sensitive
- id: delete
  doc: rename files before reading then delete afterwards
  type: boolean
  inputBinding:
    prefix: -delete
- id: version
  doc: print version number and exit
  type: boolean
  inputBinding:
    prefix: -version
outputs: []
cwlVersion: v1.1
baseCommand:
- dbiprof
