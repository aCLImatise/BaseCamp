class: CommandLineTool
id: ../../../grep.py.cwl
inputs:
- id: in_reverse
  doc: Equivalent to the "-v" grep option
  type: boolean
  inputBinding:
    prefix: --reverse
- id: in_separator
  doc: "The field separator. Default: consecutive\nwhitespace(s)"
  type: string
  inputBinding:
    prefix: --separator
- id: in_field
  doc: The field to look in the target file.
  type: File
  inputBinding:
    prefix: --field
- id: in_quiet
  doc: No logging.
  type: boolean
  inputBinding:
    prefix: --quiet
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- grep.py
