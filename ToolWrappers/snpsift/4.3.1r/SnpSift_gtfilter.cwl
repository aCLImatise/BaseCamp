class: CommandLineTool
id: SnpSift_gtfilter.cwl
inputs:
- id: in_expr_file
  doc: ': Read expression from a file'
  type: File?
  inputBinding:
    prefix: --exprFile
- id: in_file
  doc: ': VCF input file. Default: STDIN'
  type: File?
  inputBinding:
    prefix: --file
- id: in_field
  doc: ": Field name to replace if filter is true. Default: 'GT'"
  type: string?
  inputBinding:
    prefix: --field
- id: in_value
  doc: ": Field value to replace if filter is true. Default: '.'"
  type: string?
  inputBinding:
    prefix: --value
- id: in_inverse
  doc: ': Inverse. Show lines that do not match filter expression'
  type: boolean?
  inputBinding:
    prefix: --inverse
- id: in_set
  doc: ": Create a SET using 'file'"
  type: File?
  inputBinding:
    prefix: --set
- id: in_err_missing
  doc: ': Error is a field is missing. Default: false'
  type: boolean?
  inputBinding:
    prefix: --errMissing
- id: in_format
  doc: ': SnpEff format version: {2, 3}. Default: Auto'
  type: long?
  inputBinding:
    prefix: --format
- id: in_jar
  doc: ''
  type: string?
  inputBinding:
    prefix: -jar
- id: in_java
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_filter
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- SnpSift
- gtfilter
