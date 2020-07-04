class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/getRna.cwl
inputs:
- id: cds_upper_all
  doc: '- like -cdsUpper, except keep sequeneces without CDS'
  type: boolean
  inputBinding:
    prefix: -cdsUpperAll
- id: incl_ver
  doc: '- include version with sequence id.'
  type: boolean
  inputBinding:
    prefix: -inclVer
- id: peptides
  doc: '- translate mRNAs to peptides'
  type: boolean
  inputBinding:
    prefix: -peptides
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
outputs: []
cwlVersion: v1.1
baseCommand:
- getRna
