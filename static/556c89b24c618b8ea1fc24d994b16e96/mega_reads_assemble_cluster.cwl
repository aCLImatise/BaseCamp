class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/mega_reads_assemble_cluster.sh.cwl
inputs:
- id: m
  doc: ''
  type: File
  inputBinding:
    prefix: -m
- id: p
  doc: ''
  type: string
  inputBinding:
    prefix: -p
- id: a
  doc: ''
  type: File
  inputBinding:
    prefix: -a
- id: mega_reads_assemble_dots_h
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- mega_reads_assemble_cluster.sh
