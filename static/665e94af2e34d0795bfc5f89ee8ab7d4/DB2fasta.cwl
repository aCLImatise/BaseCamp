class: CommandLineTool
id: DB2fasta.cwl
inputs:
- id: in_use_upper_case
  doc: ': Use upper case for DNA (default is lower case).'
  type: boolean?
  inputBinding:
    prefix: -U
- id: in_print_bp_line
  doc: ': Print -w bp per line (default is 80).'
  type: boolean?
  inputBinding:
    prefix: -w
- id: in_vu
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -vU
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- DB2fasta
