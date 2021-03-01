class: CommandLineTool
id: ptx.cwl
inputs:
- id: in_auto_reference
  doc: output automatically generated references
  type: boolean?
  inputBinding:
    prefix: --auto-reference
- id: in_traditional
  doc: behave more like System V 'ptx'
  type: boolean?
  inputBinding:
    prefix: --traditional
- id: in_flag_truncation
  doc: "use STRING for flagging line truncations.\nThe default is '/'"
  type: string?
  inputBinding:
    prefix: --flag-truncation
- id: in_macro_name
  doc: macro name to use instead of 'xx'
  type: string?
  inputBinding:
    prefix: --macro-name
- id: in_format
  doc: generate output as TeX directives
  type: string?
  inputBinding:
    prefix: --format
- id: in_right_side_refs
  doc: put references at right, not counted in -w
  type: boolean?
  inputBinding:
    prefix: --right-side-refs
- id: in_sentence_regexp
  doc: for end of lines or end of sentences
  type: string?
  inputBinding:
    prefix: --sentence-regexp
- id: in_word_regexp
  doc: use REGEXP to match each keyword
  type: string?
  inputBinding:
    prefix: --word-regexp
- id: in_break_file
  doc: word break characters in this FILE
  type: File?
  inputBinding:
    prefix: --break-file
- id: in_ignore_case
  doc: fold lower case to upper case for sorting
  type: boolean?
  inputBinding:
    prefix: --ignore-case
- id: in_gap_size
  doc: gap size in columns between output fields
  type: long?
  inputBinding:
    prefix: --gap-size
- id: in_ignore_file
  doc: read ignore word list from FILE
  type: File?
  inputBinding:
    prefix: --ignore-file
- id: in_only_file
  doc: read only word list from this FILE
  type: File?
  inputBinding:
    prefix: --only-file
- id: in_references
  doc: first field of each line is a reference
  type: boolean?
  inputBinding:
    prefix: --references
- id: in_typeset_mode
  doc: '- not implemented -'
  type: boolean?
  inputBinding:
    prefix: --typeset-mode
- id: in_width
  doc: output width in columns, reference excluded
  type: long?
  inputBinding:
    prefix: --width
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- ptx
