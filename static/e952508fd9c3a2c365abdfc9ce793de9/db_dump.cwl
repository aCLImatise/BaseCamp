class: CommandLineTool
id: ../../../db_dump.cwl
inputs:
- id: bkl_npr_rv
  doc: ''
  type: boolean
  inputBinding:
    prefix: -bklNprRV
outputs: []
cwlVersion: v1.1
baseCommand:
- db_dump
