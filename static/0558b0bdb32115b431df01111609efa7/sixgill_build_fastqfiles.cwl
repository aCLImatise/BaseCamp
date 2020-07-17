class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/sixgill_build_fastqfiles.cwl
inputs:
- id: minlength
  doc: ''
  type: long
  inputBinding:
    prefix: --minlength
- id: six_gill_build
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- sixgill_build
- fastqfiles
