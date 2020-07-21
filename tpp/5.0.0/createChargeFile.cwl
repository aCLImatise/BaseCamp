class: CommandLineTool
id: ../../../createChargeFile.pl.cwl
inputs:
- id: format
  doc: ': format of input file or directory the version only support CPM output of
    ms2 format and dta directory'
  type: boolean
  inputBinding:
    prefix: --format
- id: i
  doc: ''
  type: boolean
  inputBinding:
    prefix: -i
- id: o
  doc: ''
  type: boolean
  inputBinding:
    prefix: -o
outputs: []
cwlVersion: v1.1
baseCommand:
- createChargeFile.pl
