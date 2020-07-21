class: CommandLineTool
id: ../../../bedtools_reldist.cwl
inputs:
- id: detail
  doc: the relativedistance for each interval in A
  type: string
  inputBinding:
    prefix: -detail
- id: a
  doc: ''
  type: string
  inputBinding:
    prefix: -a
- id: b
  doc: ''
  type: string
  inputBinding:
    prefix: -b
outputs: []
cwlVersion: v1.1
baseCommand:
- bedtools
- reldist
