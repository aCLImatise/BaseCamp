class: CommandLineTool
id: getRna.cwl
inputs:
- id: database
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: acc_file
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: out_fa
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: cds_upper_all
  doc: ', except keep sequeneces without CDS'
  type: boolean
  inputBinding:
    prefix: -cdsUpperAll
- id: include
  doc: with sequence id.
  type: string
  inputBinding:
    prefix: '- include'
- id: translate
  doc: to peptides
  type: string
  inputBinding:
    prefix: '- translate'
outputs: []
cwlVersion: v1.1
baseCommand:
- getRna
