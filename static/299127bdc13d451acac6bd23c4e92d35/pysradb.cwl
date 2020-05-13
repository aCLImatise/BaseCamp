class: CommandLineTool
id: pysradb.cwl
inputs:
- id: citation
  doc: how to cite
  type: boolean
  inputBinding:
    prefix: --citation
outputs: []
cwlVersion: v1.1
baseCommand:
- pysradb
