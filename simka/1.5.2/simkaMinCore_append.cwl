class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/simkaMinCore_append.cwl
inputs:
- id: in_one
  doc: '(1 arg) :    first sketch file to merge (this file will be overwritten)'
  type: boolean
  inputBinding:
    prefix: -in1
- id: in_two
  doc: '(1 arg) :    second sketch file to merge (this file will be appended to the
    first one)'
  type: boolean
  inputBinding:
    prefix: -in2
outputs: []
cwlVersion: v1.1
baseCommand:
- simkaMinCore
- append
