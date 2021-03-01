class: CommandLineTool
id: dropletutils_make_test_sdrf.R.cwl
inputs:
- id: in_barcodes
  doc: path to the cell barcodes file in .tsv format
  type: File?
  inputBinding:
    prefix: --barcodes
- id: in_output_file
  doc: path to the tab-deilmited output file
  type: File?
  inputBinding:
    prefix: --output-file
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_file
  doc: path to the tab-deilmited output file
  type: File?
  outputBinding:
    glob: $(inputs.in_output_file)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/dropletutils-scripts:0.0.5--0
cwlVersion: v1.1
baseCommand:
- dropletutils-make-test-sdrf.R
