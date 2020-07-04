class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/DB2fasta.cwl
inputs:
- id: use_upper_case
  doc: ': Use upper case for DNA (default is lower case).'
  type: boolean
  inputBinding:
    prefix: -U
- id: print_w_bp
  doc: ': Print -w bp per line (default is 80).'
  type: boolean
  inputBinding:
    prefix: -w
- id: vu
  doc: ''
  type: boolean
  inputBinding:
    prefix: -vU
outputs: []
cwlVersion: v1.1
baseCommand:
- DB2fasta
