class: CommandLineTool
id: xsubpp.cwl
inputs:
- id: in_no_arg_types
  doc: ''
  type: boolean
  inputBinding:
    prefix: -noargtypes
- id: in_no_inout
  doc: ''
  type: boolean
  inputBinding:
    prefix: -noinout
- id: in_no_optimize
  doc: ''
  type: boolean
  inputBinding:
    prefix: -nooptimize
- id: in_no_line_numbers
  doc: ''
  type: boolean
  inputBinding:
    prefix: -nolinenumbers
- id: in_no_version_check
  doc: ''
  type: boolean
  inputBinding:
    prefix: -noversioncheck
- id: in_prototypes
  doc: ''
  type: boolean
  inputBinding:
    prefix: -prototypes
- id: in_except
  doc: ''
  type: boolean
  inputBinding:
    prefix: -except
- id: in_c_suffix
  doc: ''
  type: string
  inputBinding:
    prefix: -csuffix
- id: in_v
  doc: ''
  type: boolean
  inputBinding:
    prefix: -v
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- xsubpp
