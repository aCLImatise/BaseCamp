class: CommandLineTool
id: ../../../bedparse_filter.cwl
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
- id: in_inverse
  doc: "Only report BED entries absent from the annotation\nfile.\n"
  type: boolean
  inputBinding:
    prefix: --inverse
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- bedparse
- filter
