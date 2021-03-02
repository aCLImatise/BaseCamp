class: CommandLineTool
id: phyluce_genetrees_reformat_raxml_output.cwl
inputs:
- id: in_gene_trees
  doc: The path to the directory containing RAxML best trees
  type: File?
  inputBinding:
    prefix: --genetrees
- id: in_boot_reps
  doc: The path to the directory containing RAxML bootreps
  type: File?
  inputBinding:
    prefix: --bootreps
- id: in_output_file_name
  doc: The output file name
  type: File?
  inputBinding:
    prefix: --output
- id: in_program_description
  doc: Program description
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_file_name
  doc: The output file name
  type: File?
  outputBinding:
    glob: $(inputs.in_output_file_name)
hints: []
cwlVersion: v1.1
baseCommand:
- phyluce_genetrees_reformat_raxml_output
