class: CommandLineTool
id: anvi_gen_phylogenomic_tree.cwl
inputs:
- id: fast_a_file
  doc: A FASTA-formatted input file
  type: string
  inputBinding:
    prefix: --fasta-file
- id: output_file
  doc: File path to store results.
  type: File
  inputBinding:
    prefix: --output-file
- id: program
  doc: Program name.
  type: string
  inputBinding:
    prefix: --program
outputs: []
cwlVersion: v1.1
baseCommand:
- anvi-gen-phylogenomic-tree
