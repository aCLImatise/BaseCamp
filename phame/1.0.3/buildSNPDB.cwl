class: CommandLineTool
id: buildSNPDB.pl.cwl
inputs:
- id: i
  doc: in directory name
  type: boolean
  inputBinding:
    prefix: -i
- id: r
  doc: reference file
  type: boolean
  inputBinding:
    prefix: -r
- id: l
  doc: header list
  type: boolean
  inputBinding:
    prefix: -l
outputs: []
cwlVersion: v1.1
baseCommand:
- buildSNPDB.pl
