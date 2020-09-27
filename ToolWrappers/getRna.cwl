class: CommandLineTool
id: getRna.cwl
inputs:
- id: in_cds_upper
  doc: "- lookup CDS and output it as upper case. If CDS annotation\ncan't be obtained,\
    \ the sequence is skipped with a warning."
  type: boolean
  inputBinding:
    prefix: -cdsUpper
- id: in_cds_upper_all
  doc: '- like -cdsUpper, except keep sequeneces without CDS'
  type: boolean
  inputBinding:
    prefix: -cdsUpperAll
- id: in_incl_ver
  doc: '- include version with sequence id.'
  type: boolean
  inputBinding:
    prefix: -inclVer
- id: in_peptides
  doc: '- translate mRNAs to peptides'
  type: boolean
  inputBinding:
    prefix: -peptides
- id: in_database
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_acc_file
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- getRna
