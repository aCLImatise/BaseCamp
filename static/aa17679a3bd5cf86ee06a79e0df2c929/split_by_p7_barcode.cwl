class: CommandLineTool
id: ../../../split_by_p7_barcode.cwl
inputs:
- id: in_force
  doc: Overwrite existing files when creating the output.
  type: boolean
  inputBinding:
    prefix: --force
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- split_by_p7_barcode
