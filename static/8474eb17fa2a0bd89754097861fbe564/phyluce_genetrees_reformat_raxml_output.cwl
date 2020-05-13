class: CommandLineTool
id: phyluce_genetrees_reformat_raxml_output.cwl
inputs:
- id: gene_trees
  doc: The path to the directory containing RAxML best trees
  type: string
  inputBinding:
    prefix: --genetrees
- id: boot_reps
  doc: The path to the directory containing RAxML bootreps
  type: string
  inputBinding:
    prefix: --bootreps
- id: output
  doc: The output file name
  type: string
  inputBinding:
    prefix: --output
outputs: []
cwlVersion: v1.1
baseCommand:
- phyluce_genetrees_reformat_raxml_output
