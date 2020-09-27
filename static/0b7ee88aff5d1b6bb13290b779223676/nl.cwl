class: CommandLineTool
id: nl.cwl
inputs:
- id: in_body_numbering
  doc: use STYLE for numbering body lines
  type: string
  inputBinding:
    prefix: --body-numbering
- id: in_section_delimiter
  doc: use CC for logical page delimiters
  type: string
  inputBinding:
    prefix: --section-delimiter
- id: in_footer_numbering
  doc: use STYLE for numbering footer lines
  type: string
  inputBinding:
    prefix: --footer-numbering
- id: in_header_numbering
  doc: use STYLE for numbering header lines
  type: string
  inputBinding:
    prefix: --header-numbering
- id: in_line_increment
  doc: line number increment at each line
  type: long
  inputBinding:
    prefix: --line-increment
- id: in_join_blank_lines
  doc: group of NUMBER empty lines counted as one
  type: long
  inputBinding:
    prefix: --join-blank-lines
- id: in_number_format
  doc: insert line numbers according to FORMAT
  type: long
  inputBinding:
    prefix: --number-format
- id: in_no_re_number
  doc: do not reset line numbers for each section
  type: boolean
  inputBinding:
    prefix: --no-renumber
- id: in_number_separator
  doc: add STRING after (possible) line number
  type: long
  inputBinding:
    prefix: --number-separator
- id: in_starting_line_number
  doc: first line number for each section
  type: long
  inputBinding:
    prefix: --starting-line-number
- id: in_number_width
  doc: use NUMBER columns for line numbers
  type: long
  inputBinding:
    prefix: --number-width
- id: in_pb_re
  doc: "number only lines that contain a match for the basic regular\nexpression,\
    \ BRE"
  type: string
  inputBinding:
    position: 0
- id: in_ln
  doc: left justified, no leading zeros
  type: string
  inputBinding:
    position: 0
- id: in_rn
  doc: right justified, no leading zeros
  type: string
  inputBinding:
    position: 1
- id: in_rz
  doc: right justified, leading zeros
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- nl
