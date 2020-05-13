class: CommandLineTool
id: graph2asqg.cwl
inputs:
- id: b
  doc: '# (required)'
  type: string
  inputBinding:
    prefix: -b
- id: r
  doc: '# (optional, default: <basename>) '
  type: string
  inputBinding:
    prefix: -r
- id: l
  doc: '# (required) '
  type: string
  inputBinding:
    prefix: -l
- id: n
  doc: '# (optional) use numeric IDs instead of FASTA IDs'
  type: boolean
  inputBinding:
    prefix: -n
outputs: []
cwlVersion: v1.1
baseCommand:
- graph2asqg
