class: CommandLineTool
id: ../../../blastToPsl.cwl
inputs:
- id: verbose
  doc: '- n >= 3 prints each line of file after parsing. n >= 4 dumps the result of
    each query'
  type: string
  inputBinding:
    prefix: -verbose
- id: eval
  doc: n is e-value threshold to filter results. Format can be either an integer,
    double or 1e-10. Default is no filter.
  type: string
  inputBinding:
    prefix: -eVal
- id: psl_x
  doc: '- create PSLX output (includes sequences for blocks)'
  type: boolean
  inputBinding:
    prefix: -pslx
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
outputs: []
cwlVersion: v1.1
baseCommand:
- blastToPsl
