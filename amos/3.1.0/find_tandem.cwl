class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/find_tandem.cwl
inputs:
- id: multifasta_file_scan
  doc: multifasta file to scan
  type: string
  inputBinding:
    prefix: -f
- id: minimum_number_units
  doc: 'minimum number of units to report (default: 3)'
  type: string
  inputBinding:
    prefix: -u
- id: minimum_length_tandem
  doc: 'minimum length of tandem in bp (default: 8)'
  type: string
  inputBinding:
    prefix: -l
- id: max_unit_length
  doc: 'max unit length (default: 4)'
  type: string
  inputBinding:
    prefix: -x
- id: min_unit_length
  doc: 'min unit length (default: 1)'
  type: string
  inputBinding:
    prefix: -m
- id: flanking_bp_report
  doc: 'flanking bp to report (default: 10)'
  type: string
  inputBinding:
    prefix: -k
- id: find_tandems
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- find-tandem
