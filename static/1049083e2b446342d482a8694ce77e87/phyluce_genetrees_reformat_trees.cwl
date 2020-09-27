class: CommandLineTool
id: phyluce_genetrees_reformat_trees.cwl
inputs:
- id: in_input
  doc: The input trees directory
  type: Directory
  inputBinding:
    prefix: --input
- id: in_output
  doc: The output trees directory
  type: Directory
  inputBinding:
    prefix: --output
- id: in_input_format
  doc: The tree file format
  type: string
  inputBinding:
    prefix: --input-format
- id: in_output_format
  doc: The tree file format
  type: string
  inputBinding:
    prefix: --output-format
- id: in_do_not_preserve_spaces
  doc: "Do not retain spaces in output names\n"
  type: string
  inputBinding:
    prefix: --do-not-preserve-spaces
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: The output trees directory
  type: Directory
  outputBinding:
    glob: $(inputs.in_output)
cwlVersion: v1.1
baseCommand:
- phyluce_genetrees_reformat_trees
