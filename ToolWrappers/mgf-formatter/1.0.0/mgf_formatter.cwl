class: CommandLineTool
id: mgf_formatter.cwl
inputs:
- id: in_it_raq_filter
  doc: 'Default: false'
  type: boolean
  inputBinding:
    prefix: --itraq_filter
- id: in_mgf_format
  doc: 'Default: DEFAULT'
  type: boolean
  inputBinding:
    prefix: --mgf_format
- id: in_no_split_multiple_charge_states
  doc: 'Default: false'
  type: boolean
  inputBinding:
    prefix: --no_split_multiple_charge_states
- id: in_output
  doc: Output
  type: boolean
  inputBinding:
    prefix: --output
- id: in_main_class
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_input
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- mgf-formatter
