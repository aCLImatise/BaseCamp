class: CommandLineTool
id: cmfinder.cwl
inputs:
- id: c
  doc: ': the candidate file '
  type: string
  inputBinding:
    prefix: -c
- id: a
  doc: ': the initial motif alignment '
  type: string
  inputBinding:
    prefix: -a
- id: i
  doc: ': the initial covariance model'
  type: string
  inputBinding:
    prefix: -i
- id: o
  doc: ': the output motif structural alignment in stockholm format '
  type: string
  inputBinding:
    prefix: -o
- id: v
  doc: ': print intermediate alignments '
  type: string
  inputBinding:
    prefix: -v
outputs: []
cwlVersion: v1.1
baseCommand:
- cmfinder
