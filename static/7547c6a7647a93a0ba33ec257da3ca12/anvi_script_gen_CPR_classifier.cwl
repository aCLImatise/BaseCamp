class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/anvi_script_gen_CPR_classifier.cwl
inputs:
- id: output
  doc: Output file name for the classifier.
  type: string
  inputBinding:
    prefix: --output
- id: matrix_file
  doc: TAB-delimited matrix of CPR genome names, classes, and presence absence of
    single-copy genes. Headers of the first two rows should be "genome", and "class".
    The rest of the rows shold be single-copy genes.
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- anvi-script-gen-CPR-classifier
