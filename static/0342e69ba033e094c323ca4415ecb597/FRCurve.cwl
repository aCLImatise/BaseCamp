class: CommandLineTool
id: FRCurve.cwl
inputs:
- id: in_d
  doc: ''
  type: string?
  inputBinding:
    prefix: -D
- id: in_description
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_each
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_for
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_given
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_var_5
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_var_6
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_assembler
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_errors
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_http
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_params
  doc: ''
  type: string?
  inputBinding:
    position: 0
- id: in_feature_response
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_any
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_as
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_file
  doc: ''
  type: File
  inputBinding:
    position: 1
- id: in_more
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_a
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_contains
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_curve
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_details
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_format
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_set
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_characterizes
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: in_function
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: in_var_24
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: in_see
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: in_frcs
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: in_features
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: in_is
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: in_of
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: in_var_30
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: in_analyzed
  doc: ''
  type: string
  inputBinding:
    position: 5
- id: in_computed
  doc: ''
  type: string
  inputBinding:
    position: 5
- id: in_in
  doc: ''
  type: string
  inputBinding:
    position: 5
- id: in_its
  doc: ''
  type: string
  inputBinding:
    position: 5
- id: in_sensitivity
  doc: ''
  type: string
  inputBinding:
    position: 5
- id: in_wiki
  doc: ''
  type: string
  inputBinding:
    position: 5
- id: in_three_columns
  doc: ''
  type: long
  inputBinding:
    position: 6
- id: in_by
  doc: ''
  type: string
  inputBinding:
    position: 6
- id: in_discrimination
  doc: ''
  type: string
  inputBinding:
    position: 6
- id: in_page
  doc: ''
  type: string
  inputBinding:
    position: 6
- id: in_at
  doc: ''
  type: string
  inputBinding:
    position: 7
- id: in_threshold
  doc: ''
  type: string
  inputBinding:
    position: 7
- id: in_amos_validate
  doc: ''
  type: string
  inputBinding:
    position: 8
- id: in_pipeline
  doc: ''
  type: string
  inputBinding:
    position: 9
- id: in_maximum
  doc: ''
  type: string
  inputBinding:
    position: 11
- id: in_number
  doc: ''
  type: long
  inputBinding:
    position: 12
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- FRCurve
