class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/vcf_filter.py_input.cwl
inputs:
- id: no_short_circuit
  doc: ''
  type: boolean
  inputBinding:
    prefix: --no-short-circuit
- id: no_filtered
  doc: ''
  type: boolean
  inputBinding:
    prefix: --no-filtered
- id: vcf_filter_do_tpy
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- vcf_filter.py
- input
