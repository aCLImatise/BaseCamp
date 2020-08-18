class: CommandLineTool
id: ../../../hed.cwl
inputs:
- id: string_one
  doc: first string. Use quotation marks around your string (e.g. "STRING")for the
    empty string or strings with special characters
  type: string
  inputBinding:
    prefix: --string1
- id: string_two
  doc: second string
  type: string
  inputBinding:
    prefix: --string2
- id: all
  doc: show all optimal subsequences
  type: boolean
  inputBinding:
    prefix: --all
- id: backtrace
  doc: print transformation steps
  type: boolean
  inputBinding:
    prefix: --backtrace
outputs: []
cwlVersion: v1.1
baseCommand:
- hed
