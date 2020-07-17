class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/cgpAppendIdsToVcf.pl.cwl
inputs:
- id: id_start
  doc: (-g)       Will set a sequential id generator to the given integer value. If
    not present will assign UUIDs to each variant.
  type: boolean
  inputBinding:
    prefix: --idstart
- id: i
  doc: ''
  type: string
  inputBinding:
    prefix: -i
- id: o
  doc: ''
  type: string
  inputBinding:
    prefix: -o
outputs: []
cwlVersion: v1.1
baseCommand:
- cgpAppendIdsToVcf.pl
