class: CommandLineTool
id: ptx.cwl
inputs:
- id: auto_reference
  doc: output automatically generated references
  type: boolean
  inputBinding:
    prefix: --auto-reference
- id: traditional
  doc: behave more like System V 'ptx'
  type: boolean
  inputBinding:
    prefix: --traditional
- id: flag_truncation
  doc: use STRING for flagging line truncations. The default is '/'
  type: string
  inputBinding:
    prefix: --flag-truncation
- id: macro_name
  doc: macro name to use instead of 'xx'
  type: string
  inputBinding:
    prefix: --macro-name
- id: format
  doc: generate output as roff directives
  type: string
  inputBinding:
    prefix: --format
- id: right_side_refs
  doc: put references at right, not counted in -w
  type: boolean
  inputBinding:
    prefix: --right-side-refs
- id: sentence_regexp
  doc: for end of lines or end of sentences
  type: string
  inputBinding:
    prefix: --sentence-regexp
- id: format
  doc: generate output as TeX directives
  type: string
  inputBinding:
    prefix: --format
- id: word_regexp
  doc: use REGEXP to match each keyword
  type: string
  inputBinding:
    prefix: --word-regexp
- id: break_file
  doc: word break characters in this FILE
  type: File
  inputBinding:
    prefix: --break-file
- id: ignore_case
  doc: lower case to upper case for sorting
  type: string
  inputBinding:
    prefix: --ignore-case
- id: gap_size
  doc: gap size in columns between output fields
  type: string
  inputBinding:
    prefix: --gap-size
- id: ignore_file
  doc: read ignore word list from FILE
  type: File
  inputBinding:
    prefix: --ignore-file
- id: only_file
  doc: read only word list from this FILE
  type: File
  inputBinding:
    prefix: --only-file
- id: references
  doc: field of each line is a reference
  type: string
  inputBinding:
    prefix: --references
- id: typeset_mode
  doc: output width in columns, reference excluded
  type: string
  inputBinding:
    prefix: --typeset-mode
outputs: []
cwlVersion: v1.1
baseCommand:
- ptx
