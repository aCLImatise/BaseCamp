class: CommandLineTool
id: bedparse_filter.cwl
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
- id: inverse
  doc: Only report BED entries absent from the annotation file.
  type: boolean
  inputBinding:
    prefix: --inverse
outputs: []
cwlVersion: v1.1
baseCommand:
- bedparse
- filter
