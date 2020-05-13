class: CommandLineTool
id: createChargeFile.pl.cwl
inputs:
- id: format
  doc: ': format of input file or directory the version only support CPM output of
    ms2 format and dta directory'
  type: boolean
  inputBinding:
    prefix: --format
outputs: []
cwlVersion: v1.1
baseCommand:
- createChargeFile.pl
