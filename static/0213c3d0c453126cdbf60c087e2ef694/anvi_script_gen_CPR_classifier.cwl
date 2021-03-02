class: CommandLineTool
id: anvi_script_gen_CPR_classifier.cwl
inputs:
- id: in_output
  doc: "Output file name for the classifier.\n"
  type: File?
  inputBinding:
    prefix: --output
- id: in_matrix_file
  doc: "TAB-delimited matrix of CPR genome names, classes, and\npresence absence of\
    \ single-copy genes. Headers of the\nfirst two rows should be \"genome\", and\
    \ \"class\". The\nrest of the rows shold be single-copy genes."
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: "Output file name for the classifier.\n"
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
hints: []
cwlVersion: v1.1
baseCommand:
- anvi-script-gen-CPR-classifier
