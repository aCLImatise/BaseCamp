class: CommandLineTool
id: split_by_p7_barcode_p5_file.cwl
inputs:
- id: p5_file
  doc: Path to forward read file.
  type: string
  inputBinding:
    position: 0
- id: p7_file
  doc: Path to reverse read file.
  type: string
  inputBinding:
    position: 1
- id: force
  doc: Overwrite existing files when creating the output.
  type: boolean
  inputBinding:
    prefix: --force
outputs: []
cwlVersion: v1.1
baseCommand:
- split_by_p7_barcode
- p5_file
