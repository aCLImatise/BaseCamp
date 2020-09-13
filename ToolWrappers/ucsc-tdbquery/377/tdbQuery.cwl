class: CommandLineTool
id: ../../../tdbQuery.cwl
inputs:
- id: in_root
  doc: =/path/to/trackDb/root/dir
  type: boolean
  inputBinding:
    prefix: -root
- id: in_check
  doc: ''
  type: boolean
  inputBinding:
    prefix: -check
- id: in_strict
  doc: ''
  type: boolean
  inputBinding:
    prefix: -strict
- id: in_release
  doc: '|beta|public'
  type: string
  inputBinding:
    prefix: -release
- id: in_no_blank
  doc: ''
  type: boolean
  inputBinding:
    prefix: -noBlank
- id: in_one_line
  doc: ''
  type: boolean
  inputBinding:
    prefix: -oneLine
- id: in_no_comp_sub
  doc: ''
  type: boolean
  inputBinding:
    prefix: -noCompSub
- id: in_short_label_length
  doc: ''
  type: string
  inputBinding:
    prefix: -shortLabelLength
- id: in_long_label_length
  doc: ''
  type: string
  inputBinding:
    prefix: -longLabelLength
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- tdbQuery
