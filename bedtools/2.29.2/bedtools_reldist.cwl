class: CommandLineTool
id: bedtools_reldist.cwl
inputs:
- id: detail
  doc: the relativedistance for each interval in A
  type: string
  inputBinding:
    prefix: -detail
outputs: []
cwlVersion: v1.1
baseCommand:
- bedtools
- reldist
