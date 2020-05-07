class: CommandLineTool
id: dropletutils_make_test_sdrf.R.cwl
inputs:
- id: barcodes
  doc: path to the cell barcodes file in .tsv format
  type: string
  inputBinding:
    prefix: --barcodes
- id: output_file
  doc: path to the tab-deilmited output file
  type: string
  inputBinding:
    prefix: --output-file
outputs: []
cwlVersion: v1.1
baseCommand:
- dropletutils-make-test-sdrf.R
