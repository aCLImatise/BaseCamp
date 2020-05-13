class: CommandLineTool
id: nl.cwl
inputs:
- id: a
  doc: number all lines
  type: string
  inputBinding:
    position: 0
- id: t
  doc: number only nonempty lines
  type: string
  inputBinding:
    position: 1
- id: n
  doc: number no lines
  type: string
  inputBinding:
    position: 2
- id: pb_re
  doc: number only lines that contain a match for the basic regular expression, BRE
  type: string
  inputBinding:
    position: 3
- id: ln
  doc: left justified, no leading zeros
  type: string
  inputBinding:
    position: 0
- id: rn
  doc: right justified, no leading zeros
  type: string
  inputBinding:
    position: 1
- id: rz
  doc: right justified, leading zeros
  type: string
  inputBinding:
    position: 2
- id: body_numbering
  doc: use STYLE for numbering body lines
  type: string
  inputBinding:
    prefix: --body-numbering
- id: section_delimiter
  doc: use CC for separating logical pages
  type: string
  inputBinding:
    prefix: --section-delimiter
- id: footer_numbering
  doc: use STYLE for numbering footer lines
  type: string
  inputBinding:
    prefix: --footer-numbering
- id: header_numbering
  doc: use STYLE for numbering header lines
  type: string
  inputBinding:
    prefix: --header-numbering
- id: line_increment
  doc: line number increment at each line
  type: string
  inputBinding:
    prefix: --line-increment
- id: join_blank_lines
  doc: group of NUMBER empty lines counted as one
  type: string
  inputBinding:
    prefix: --join-blank-lines
- id: number_format
  doc: insert line numbers according to FORMAT
  type: string
  inputBinding:
    prefix: --number-format
- id: no_re_number
  doc: do not reset line numbers at logical pages
  type: boolean
  inputBinding:
    prefix: --no-renumber
- id: number_separator
  doc: add STRING after (possible) line number
  type: string
  inputBinding:
    prefix: --number-separator
- id: starting_line_number
  doc: first line number on each logical page
  type: string
  inputBinding:
    prefix: --starting-line-number
- id: number_width
  doc: use NUMBER columns for line numbers
  type: string
  inputBinding:
    prefix: --number-width
outputs: []
cwlVersion: v1.1
baseCommand:
- nl
