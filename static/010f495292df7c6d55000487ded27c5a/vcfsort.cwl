class: CommandLineTool
id: vcfsort.cwl
inputs:
- id: in_invalid_option_
  doc: ": invalid option -- '-'"
  type: boolean?
  inputBinding:
    prefix: '-1000'
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
- id: in_cat
  doc: ''
  type: string
  inputBinding:
    position: 0
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
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/vcflib:1.0.2--hfbaaabd_0
cwlVersion: v1.1
baseCommand:
- vcfsort
