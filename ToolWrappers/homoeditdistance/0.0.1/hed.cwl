class: CommandLineTool
id: hed.cwl
inputs:
- id: in_string_one
  doc: "first string. Use quotation marks around your string\n(e.g. \"STRING\")for\
    \ the empty string or strings with\nspecial characters"
  type: long
  inputBinding:
    prefix: --string1
- id: in_string_two
  doc: second string
  type: long
  inputBinding:
    prefix: --string2
- id: in_all
  doc: show all optimal subsequences
  type: boolean
  inputBinding:
    prefix: --all
- id: in_backtrace
  doc: print transformation steps
  type: boolean
  inputBinding:
    prefix: --backtrace
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- hed
