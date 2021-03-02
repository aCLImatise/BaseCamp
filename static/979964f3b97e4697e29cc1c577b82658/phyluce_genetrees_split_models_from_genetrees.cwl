class: CommandLineTool
id: phyluce_genetrees_split_models_from_genetrees.cwl
inputs:
- id: in_gene_trees
  doc: The cloudforest genetree file containing models
  type: File?
  inputBinding:
    prefix: --genetrees
- id: in_output
  doc: "The output file to hold the parsed substitution model\ndata\n"
  type: File?
  inputBinding:
    prefix: --output
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: "The output file to hold the parsed substitution model\ndata\n"
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
hints: []
cwlVersion: v1.1
baseCommand:
- phyluce_genetrees_split_models_from_genetrees
