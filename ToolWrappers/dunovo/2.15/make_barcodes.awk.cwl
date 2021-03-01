class: CommandLineTool
id: make_barcodes.awk.cwl
inputs: []
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- make-barcodes.awk
