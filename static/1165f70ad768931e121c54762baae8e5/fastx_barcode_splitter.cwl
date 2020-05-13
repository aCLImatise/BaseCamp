class: CommandLineTool
id: fastx_barcode_splitter.pl.cwl
inputs:
- id: prefix
  doc: /tmp/bla_ --suffix ".txt"
  type: boolean
  inputBinding:
    prefix: --prefix
outputs: []
cwlVersion: v1.1
baseCommand:
- fastx_barcode_splitter.pl
