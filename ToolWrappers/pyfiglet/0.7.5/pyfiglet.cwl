class: CommandLineTool
id: pyfiglet.cwl
inputs:
- id: in_font
  doc: 'font to render with (default: standard)'
  type: string?
  inputBinding:
    prefix: --font
- id: in_direction
  doc: "set direction text will be formatted in (default:\nauto)"
  type: string?
  inputBinding:
    prefix: --direction
- id: in_justify
  doc: set justification, defaults to print direction
  type: string?
  inputBinding:
    prefix: --justify
- id: in_width
  doc: "set terminal width for wrapping/justification\n(default: 80)"
  type: long?
  inputBinding:
    prefix: --width
- id: in_reverse
  doc: shows mirror image of output text
  type: boolean?
  inputBinding:
    prefix: --reverse
- id: in_flip
  doc: flips rendered output text over
  type: boolean?
  inputBinding:
    prefix: --flip
- id: in_list_fonts
  doc: show installed fonts list
  type: boolean?
  inputBinding:
    prefix: --list_fonts
- id: in_info_font
  doc: show font's information, use with -f FONT
  type: boolean?
  inputBinding:
    prefix: --info_font
- id: in_text_dot_dot
  doc: ''
  type: string?
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- pyfiglet
