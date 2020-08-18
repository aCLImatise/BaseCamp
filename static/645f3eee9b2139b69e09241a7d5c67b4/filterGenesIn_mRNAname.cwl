class: CommandLineTool
id: ../../../filterGenesIn_mRNAname.pl.cwl
inputs:
- id: gtf_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: dbfile
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- filterGenesIn_mRNAname.pl
