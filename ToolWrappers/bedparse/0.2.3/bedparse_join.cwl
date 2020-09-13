class: CommandLineTool
id: ../../../bedparse_join.cwl
inputs:
- id: in_annotation
  doc: Path to the annotation file.
  type: File
  inputBinding:
    prefix: --annotation
- id: in_column
  doc: Column of the annotation file (1-based, default=1).
  type: File
  inputBinding:
    prefix: --column
- id: in_separator
  doc: Field separator for the annotation file (default tab)
  type: File
  inputBinding:
    prefix: --separator
- id: in_empty
  doc: String to append to empty records (default '.').
  type: string
  inputBinding:
    prefix: --empty
- id: in_no_unmatched
  doc: Do not print unmatched lines.
  type: boolean
  inputBinding:
    prefix: --noUnmatched
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- bedparse
- join
