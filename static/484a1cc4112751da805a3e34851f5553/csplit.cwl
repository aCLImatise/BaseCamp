class: CommandLineTool
id: csplit.cwl
inputs:
- id: suffix_format
  doc: use sprintf FORMAT instead of %02d
  type: string
  inputBinding:
    prefix: --suffix-format
- id: prefix
  doc: use PREFIX instead of 'xx'
  type: string
  inputBinding:
    prefix: --prefix
- id: keep_files
  doc: do not remove output files on errors
  type: boolean
  inputBinding:
    prefix: --keep-files
- id: suppress_matched
  doc: suppress the lines matching PATTERN
  type: boolean
  inputBinding:
    prefix: --suppress-matched
- id: digits
  doc: use specified number of digits instead of 2
  type: string
  inputBinding:
    prefix: --digits
- id: silent
  doc: not print counts of output file sizes
  type: string
  inputBinding:
    prefix: --silent
- id: elide_empty_files
  doc: empty output files
  type: string
  inputBinding:
    prefix: --elide-empty-files
outputs: []
cwlVersion: v1.1
baseCommand:
- csplit
