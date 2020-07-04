class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/split_by_p7_barcode.cwl
inputs:
- id: force
  doc: Overwrite existing files when creating the output.
  type: boolean
  inputBinding:
    prefix: --force
outputs: []
cwlVersion: v1.1
baseCommand:
- split_by_p7_barcode
