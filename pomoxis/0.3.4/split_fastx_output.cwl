class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/split_fastx_output.cwl
inputs:
- id: split_fast_x
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: input
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: output
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: chunksize
  doc: ''
  type: string
  inputBinding:
    position: 3
outputs: []
cwlVersion: v1.1
baseCommand:
- split_fastx
- output
