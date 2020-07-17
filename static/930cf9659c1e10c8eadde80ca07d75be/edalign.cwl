class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/edalign.cwl
inputs:
- id: mandatory_path_first
  doc: Mandatory, path to first input file
  type: File
  inputBinding:
    prefix: -a
- id: mandatory_path_second
  doc: Mandatory, path to second input file
  type: File
  inputBinding:
    prefix: -b
- id: ref
  doc: ''
  type: File[]
  inputBinding:
    prefix: -ref
outputs: []
cwlVersion: v1.1
baseCommand:
- edalign
