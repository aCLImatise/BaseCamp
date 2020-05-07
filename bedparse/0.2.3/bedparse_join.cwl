class: CommandLineTool
id: bedparse_join.cwl
inputs:
- id: bed_file
  doc: Path to the BED file.
  type: string
  inputBinding:
    position: 0
- id: annotation
  doc: Path to the annotation file.
  type: string
  inputBinding:
    prefix: --annotation
- id: column
  doc: Column of the annotation file (1-based, default=1).
  type: string
  inputBinding:
    prefix: --column
- id: separator
  doc: Field separator for the annotation file (default tab)
  type: string
  inputBinding:
    prefix: --separator
- id: empty
  doc: String to append to empty records (default '.').
  type: string
  inputBinding:
    prefix: --empty
- id: no_unmatched
  doc: Do not print unmatched lines.
  type: boolean
  inputBinding:
    prefix: --noUnmatched
outputs: []
cwlVersion: v1.1
baseCommand:
- bedparse
- join
