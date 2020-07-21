class: CommandLineTool
id: ../../../pslPartition.cwl
inputs:
- id: psl_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: outdir
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- pslPartition
