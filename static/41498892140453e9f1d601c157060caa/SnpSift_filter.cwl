class: CommandLineTool
id: SnpSift_filter.cwl
inputs:
- id: in_add_filter
  doc: ": Add a string to FILTER VCF field if 'expression' is true. Default: '' (none)"
  type: string?
  inputBinding:
    prefix: --addFilter
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
- id: in_filter_id
  doc: ": ID for this filter (##FILTER tag in header and FILTER VCF field). Default:\
    \ 'SnpSift'"
  type: string?
  inputBinding:
    prefix: --filterId
- id: in_inverse
  doc: ': Inverse. Show lines that do not match filter expression'
  type: boolean?
  inputBinding:
    prefix: --inverse
- id: in_pass
  doc: ": Use 'PASS' field instead of filtering out VCF entries"
  type: boolean?
  inputBinding:
    prefix: --pass
- id: in_rm_filter
  doc: ": Remove a string from FILTER VCF field if 'expression' is true (and 'str'\
    \ is in the field). Default: '' (none)"
  type: string?
  inputBinding:
    prefix: --rmFilter
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
- id: in_galaxy
  doc: ': Used from Galaxy (expressions have been sanitized).'
  type: boolean?
  inputBinding:
    prefix: --galaxy
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
- filter
