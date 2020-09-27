class: CommandLineTool
id: mega_reads_assemble_cluster.sh.cwl
inputs:
- id: in_a
  doc: ''
  type: File
  inputBinding:
    prefix: -a
- id: in_p
  doc: ''
  type: string
  inputBinding:
    prefix: -p
- id: in_m
  doc: ''
  type: File
  inputBinding:
    prefix: -m
- id: in_mega_reads_assemble_dots_h
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- mega_reads_assemble_cluster.sh
