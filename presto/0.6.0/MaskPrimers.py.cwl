class: CommandLineTool
id: ../../../MaskPrimers.py.cwl
inputs:
- id: in_barcode
  doc: is specified.
  type: string
  inputBinding:
    prefix: --barcode
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- MaskPrimers.py
