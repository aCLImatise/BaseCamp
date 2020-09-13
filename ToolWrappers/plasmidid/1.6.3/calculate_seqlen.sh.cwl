class: CommandLineTool
id: ../../../calculate_seqlen.sh.cwl
inputs:
- id: in_file
  doc: file
  type: File
  inputBinding:
    prefix: -i
- id: in_directory_optional_default
  doc: directory (optional). By default the file is replaced in the same location
  type: File
  inputBinding:
    prefix: -o
- id: in_name_optional_default
  doc: name (optional). By default is the same name with .length extension
  type: File
  inputBinding:
    prefix: -n
- id: in_greaterthan_symbol_fasta
  doc: '">" (greater-than) symbol from fasta header'
  type: string
  inputBinding:
    prefix: -r
- id: in_v
  doc: ''
  type: string
  inputBinding:
    prefix: -v
- id: in_usage_message
  doc: usage message
  type: string
  inputBinding:
    prefix: -h
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- calculate_seqlen.sh
