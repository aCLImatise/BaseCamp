class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/nproc.cwl
inputs:
- id: all
  doc: print the number of installed processors
  type: boolean
  inputBinding:
    prefix: --all
- id: ignore
  doc: if possible, exclude N processing units
  type: string
  inputBinding:
    prefix: --ignore
- id: option
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- nproc
