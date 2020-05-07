class: CommandLineTool
id: pslPartition_pslFile.cwl
inputs:
- id: outdir
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- pslPartition
- pslFile
