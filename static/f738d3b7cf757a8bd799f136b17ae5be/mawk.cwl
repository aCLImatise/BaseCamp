class: CommandLineTool
id: mawk.cwl
inputs:
- id: in_program_text_read
  doc: Program  text is read from file instead of from the
  type: File?
  inputBinding:
    prefix: -f
- id: in_sets_field_separator
  doc: sets the field separator, FS, to value.
  type: string?
  inputBinding:
    prefix: -F
- id: in_value_assigns_value
  doc: =value     assigns value to program variable var.
  type: string?
  inputBinding:
    prefix: -v
- id: in_command_line_dot
  doc: Multiple -f options are accepted.
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- mawk
