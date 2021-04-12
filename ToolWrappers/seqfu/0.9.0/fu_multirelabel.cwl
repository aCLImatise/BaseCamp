class: CommandLineTool
id: fu_multirelabel.cwl
inputs:
- id: in_basename
  doc: Prepend file basename to sequence
  type: boolean?
  inputBinding:
    prefix: --basename
- id: in_rename
  doc: Replace original name with NAME
  type: string?
  inputBinding:
    prefix: --rename
- id: in_numeric_postfix
  doc: Add progressive number (reset at each new basename)
  type: boolean?
  inputBinding:
    prefix: --numeric-postfix
- id: in_total_postfix
  doc: Add progressive number (without resetting at each new input file)
  type: boolean?
  inputBinding:
    prefix: --total-postfix
- id: in_split_basename
  doc: 'Remove the final part of basename after CHAR [default: .]'
  type: string?
  inputBinding:
    prefix: --split-basename
- id: in_separator
  doc: 'Separator between prefix, name, suffix [default: _]'
  type: string?
  inputBinding:
    prefix: --separator
- id: in_no_comments
  doc: Strip out comments
  type: boolean?
  inputBinding:
    prefix: --no-comments
- id: in_comment_separator
  doc: 'Separate comment from name with CHAR [default: TAB]'
  type: string?
  inputBinding:
    prefix: --comment-separator
- id: in_separate
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_strip
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_comment
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_out
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_from
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_name
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: in_with
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: in_char
  doc: ''
  type: string
  inputBinding:
    position: 5
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/seqfu:0.9.0--h38613fd_1
cwlVersion: v1.1
baseCommand:
- fu-multirelabel
