class: CommandLineTool
id: mgf_formatter.cwl
inputs:
- id: it_raq_filter
  doc: 'Default: false'
  type: boolean
  inputBinding:
    prefix: --itraq_filter
- id: mgf_format
  doc: 'Default: DEFAULT'
  type: boolean
  inputBinding:
    prefix: --mgf_format
- id: no_split_multiple_charge_states
  doc: 'Default: false'
  type: boolean
  inputBinding:
    prefix: --no_split_multiple_charge_states
- id: output
  doc: Output
  type: boolean
  inputBinding:
    prefix: --output
outputs: []
cwlVersion: v1.1
baseCommand:
- mgf-formatter
