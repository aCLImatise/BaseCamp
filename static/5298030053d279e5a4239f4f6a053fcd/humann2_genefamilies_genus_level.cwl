class: CommandLineTool
id: humann2_genefamilies_genus_level.cwl
inputs:
- id: in_input
  doc: the gene families input table
  type: string?
  inputBinding:
    prefix: --input
- id: in_output
  doc: "the output table\n"
  type: string?
  inputBinding:
    prefix: --output
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- humann2_genefamilies_genus_level
