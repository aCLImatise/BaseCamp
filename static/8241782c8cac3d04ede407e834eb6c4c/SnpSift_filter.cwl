class: CommandLineTool
id: SnpSift_filter.cwl
inputs:
- id: add_filter
  doc: ": Add a string to FILTER VCF field if 'expression' is true. Default: '' (none)"
  type: string
  inputBinding:
    prefix: --addFilter
- id: expr_file
  doc: ': Read expression from a file'
  type: File
  inputBinding:
    prefix: --exprFile
- id: file
  doc: ': VCF input file. Default: STDIN'
  type: string
  inputBinding:
    prefix: --file
- id: filter_id
  doc: ": ID for this filter (##FILTER tag in header and FILTER VCF field). Default:\
    \ 'SnpSift'"
  type: string
  inputBinding:
    prefix: --filterId
- id: inverse
  doc: ': Inverse. Show lines that do not match filter expression'
  type: boolean
  inputBinding:
    prefix: --inverse
- id: pass
  doc: ": Use 'PASS' field instead of filtering out VCF entries"
  type: boolean
  inputBinding:
    prefix: --pass
- id: rm_filter
  doc: ": Remove a string from FILTER VCF field if 'expression' is true (and 'str'\
    \ is in the field). Default: '' (none)"
  type: string
  inputBinding:
    prefix: --rmFilter
- id: set
  doc: ": Create a SET using 'file'"
  type: File
  inputBinding:
    prefix: --set
- id: err_missing
  doc: ': Error is a field is missing. Default: false'
  type: boolean
  inputBinding:
    prefix: --errMissing
- id: format
  doc: ': SnpEff format version: {2, 3}. Default: Auto'
  type: string
  inputBinding:
    prefix: --format
- id: galaxy
  doc: ': Used from Galaxy (expressions have been sanitized).'
  type: boolean
  inputBinding:
    prefix: --galaxy
outputs: []
cwlVersion: v1.1
baseCommand:
- SnpSift
- filter
