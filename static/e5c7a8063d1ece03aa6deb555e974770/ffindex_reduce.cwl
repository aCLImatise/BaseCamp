class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/ffindex_reduce.cwl
inputs:
- id: data_filename
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: index_filename
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: program
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: program_args
  doc: ''
  type: string
  inputBinding:
    position: 3
outputs: []
cwlVersion: v1.1
baseCommand:
- ffindex_reduce
