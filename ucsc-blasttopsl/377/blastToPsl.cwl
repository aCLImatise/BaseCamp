class: CommandLineTool
id: blastToPsl.cwl
inputs:
- id: blast_output
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: psl
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: eval
  doc: n is e-value threshold to filter results. Format can be either an integer,
    double or 1e-10. Default is no filter.
  type: string
  inputBinding:
    prefix: -eVal
- id: create
  doc: output (includes sequences for blocks)
  type: string
  inputBinding:
    prefix: '- create'
outputs: []
cwlVersion: v1.1
baseCommand:
- blastToPsl
