class: CommandLineTool
id: rnabob.cwl
inputs:
- id: c
  doc: ':    search both strands of database'
  type: boolean
  inputBinding:
    prefix: -c
- id: q
  doc: ':    quiet: suppress verbose banner and headers'
  type: boolean
  inputBinding:
    prefix: -q
- id: s
  doc: ':    skip mode: disallow overlapping matches'
  type: boolean
  inputBinding:
    prefix: -s
- id: f
  doc: ':    fancy: show full alignments to pattern'
  type: boolean
  inputBinding:
    prefix: -F
outputs: []
cwlVersion: v1.1
baseCommand:
- rnabob
