class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/knock_knock_whos_there.cwl
inputs:
- id: knock_knock
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- knock-knock
- whos-there
