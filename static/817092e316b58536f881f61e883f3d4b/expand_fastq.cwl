class: CommandLineTool
id: expand_fastq.cwl
inputs:
- id: in_print_first_n
  doc: '[-]N[kbm]    Print first N bytes'
  type: boolean?
  inputBinding:
    prefix: -c
- id: in_never_print_headers
  doc: Never print headers
  type: boolean?
  inputBinding:
    prefix: -q
- id: in_always_print_headers
  doc: Always print headers
  type: boolean?
  inputBinding:
    prefix: -v
- id: in_head
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_file
  doc: ''
  type: File?
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- expand_fastq
