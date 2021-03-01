class: CommandLineTool
id: mega_reads_assemble_ref.sh.cwl
inputs:
- id: in_a
  doc: ''
  type: File?
  inputBinding:
    prefix: -a
- id: in_r
  doc: ''
  type: string?
  inputBinding:
    prefix: -r
- id: in_m
  doc: ''
  type: File?
  inputBinding:
    prefix: -m
- id: in_mega_reads_assemble_i_ref_dots_h
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- mega_reads_assemble_ref.sh
