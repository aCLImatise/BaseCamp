class: CommandLineTool
id: find_tandem.cwl
inputs:
- id: in_multifasta_file_scan
  doc: multifasta file to scan
  type: File
  inputBinding:
    prefix: -f
- id: in_minimum_number_report
  doc: 'minimum number of units to report (default: 3)'
  type: long
  inputBinding:
    prefix: -u
- id: in_minimum_length_tandem
  doc: 'minimum length of tandem in bp (default: 8)'
  type: long
  inputBinding:
    prefix: -l
- id: in_max_unit_length
  doc: 'max unit length (default: 4)'
  type: long
  inputBinding:
    prefix: -x
- id: in_min_unit_length
  doc: 'min unit length (default: 1)'
  type: long
  inputBinding:
    prefix: -m
- id: in_flanking_bp_report
  doc: 'flanking bp to report (default: 10)'
  type: long
  inputBinding:
    prefix: -k
- id: in_find_tandems
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
- find-tandem
