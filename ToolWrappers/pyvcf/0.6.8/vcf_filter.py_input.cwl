class: CommandLineTool
id: vcf_filter.py_input.cwl
inputs:
- id: in_no_filtered
  doc: ''
  type: boolean?
  inputBinding:
    prefix: --no-filtered
- id: in_no_short_circuit
  doc: ''
  type: boolean?
  inputBinding:
    prefix: --no-short-circuit
- id: in_vcf_filter_do_tpy
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
- vcf_filter.py
- input
