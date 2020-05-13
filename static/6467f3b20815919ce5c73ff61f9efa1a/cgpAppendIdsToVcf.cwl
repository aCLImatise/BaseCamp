class: CommandLineTool
id: cgpAppendIdsToVcf.pl.cwl
inputs:
- id: id_start
  doc: (-g)       Will set a sequential id generator to the given integer value. If
    not present will assign UUIDs to each variant.
  type: boolean
  inputBinding:
    prefix: --idstart
outputs: []
cwlVersion: v1.1
baseCommand:
- cgpAppendIdsToVcf.pl
