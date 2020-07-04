class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/plastome_arch_info.py.cwl
inputs:
- id: output_file
  doc: output file.
  type: string
  inputBinding:
    prefix: -o
- id: minimum_repeat_length
  doc: 'The minimum repeat length treated as the IR region of plastome. Default: [5000]'
  type: long
  inputBinding:
    prefix: -r
- id: valid_bases_atgcrmykhbdvatgcrmykhbdv
  doc: 'Valid bases. Default: ATGCRMYKHBDVatgcrmykhbdv'
  type: string
  inputBinding:
    prefix: -v
- id: fast_a_format_sequence_file
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- plastome_arch_info.py
