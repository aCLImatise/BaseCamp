#!/usr/bin/env cwl-runner

baseCommand:
- nl
class: CommandLineTool
cwlVersion: v1.0
id: nl
inputs:
- doc: number all lines
  id: a
  inputBinding:
    position: 0
  type: string
- doc: number only nonempty lines
  id: t
  inputBinding:
    position: 1
  type: string
- doc: number no lines
  id: n
  inputBinding:
    position: 2
  type: string
- doc: number only lines that contain a match for the basic regular expression, BRE
  id: pb_re
  inputBinding:
    position: 3
  type: string
- doc: left justified, no leading zeros
  id: ln
  inputBinding:
    position: 0
  type: string
- doc: right justified, no leading zeros
  id: rn
  inputBinding:
    position: 1
  type: string
- doc: right justified, leading zeros
  id: rz
  inputBinding:
    position: 2
  type: string
- doc: use STYLE for numbering body lines
  id: body_numbering
  inputBinding:
    prefix: --body-numbering
  type: string
- doc: use CC for separating logical pages
  id: section_delimiter
  inputBinding:
    prefix: --section-delimiter
  type: string
- doc: use STYLE for numbering footer lines
  id: footer_numbering
  inputBinding:
    prefix: --footer-numbering
  type: string
- doc: use STYLE for numbering header lines
  id: header_numbering
  inputBinding:
    prefix: --header-numbering
  type: string
- doc: line number increment at each line
  id: line_increment
  inputBinding:
    prefix: --line-increment
  type: string
- doc: group of NUMBER empty lines counted as one
  id: join_blank_lines
  inputBinding:
    prefix: --join-blank-lines
  type: string
- doc: insert line numbers according to FORMAT
  id: number_format
  inputBinding:
    prefix: --number-format
  type: string
- doc: do not reset line numbers at logical pages
  id: no_re_number
  inputBinding:
    prefix: --no-renumber
  type: boolean
- doc: add STRING after (possible) line number
  id: number_separator
  inputBinding:
    prefix: --number-separator
  type: string
- doc: first line number on each logical page
  id: starting_line_number
  inputBinding:
    prefix: --starting-line-number
  type: string
- doc: use NUMBER columns for line numbers
  id: number_width
  inputBinding:
    prefix: --number-width
  type: string
