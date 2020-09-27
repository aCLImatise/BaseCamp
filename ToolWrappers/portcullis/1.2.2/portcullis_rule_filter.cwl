class: CommandLineTool
id: portcullis_rule_filter.cwl
inputs:
- id: in_script
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_to
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_automate
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_csv
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: in_filtering
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: in_based
  doc: ''
  type: string
  inputBinding:
    position: 5
- id: in_on
  doc: ''
  type: string
  inputBinding:
    position: 6
- id: in_a
  doc: ''
  type: string
  inputBinding:
    position: 7
- id: in_json
  doc: ''
  type: string
  inputBinding:
    position: 8
- id: in_configuration_dot
  doc: ''
  type: string
  inputBinding:
    position: 9
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- portcullis_rule_filter
