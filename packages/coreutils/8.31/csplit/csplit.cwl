class: CommandLineTool
id: csplit.cwl
inputs:
- id: in_suffix_format
  doc: use sprintf FORMAT instead of %02d
  type: long
  inputBinding:
    prefix: --suffix-format
- id: in_prefix
  doc: use PREFIX instead of 'xx'
  type: string
  inputBinding:
    prefix: --prefix
- id: in_keep_files
  doc: do not remove output files on errors
  type: boolean
  inputBinding:
    prefix: --keep-files
- id: in_suppress_matched
  doc: suppress the lines matching PATTERN
  type: boolean
  inputBinding:
    prefix: --suppress-matched
- id: in_digits
  doc: use specified number of digits instead of 2
  type: long
  inputBinding:
    prefix: --digits
- id: in_silent
  doc: do not print counts of output file sizes
  type: File
  inputBinding:
    prefix: --silent
- id: in_elide_empty_files
  doc: remove empty output files
  type: boolean
  inputBinding:
    prefix: --elide-empty-files
- id: in_integer
  doc: copy up to but not including specified line number
  type: long
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_silent
  doc: do not print counts of output file sizes
  type: File
  outputBinding:
    glob: $(inputs.in_silent)
cwlVersion: v1.1
baseCommand:
- csplit
