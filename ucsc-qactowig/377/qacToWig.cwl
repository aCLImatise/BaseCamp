class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/qacToWig.cwl
inputs:
- id: name
  doc: restrict output to just this sequence name
  type: string
  inputBinding:
    prefix: -name
- id: fixed
  doc: output single file with wig headers and fixed step size
  type: boolean
  inputBinding:
    prefix: -fixed
- id: in_dot_qac
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: out_file_or_dir
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- qacToWig
