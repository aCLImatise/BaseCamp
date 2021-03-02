class: CommandLineTool
id: humann2_split_table.cwl
inputs:
- id: in_verbose
  doc: additional output is printed
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_input
  doc: the gene table to read
  type: string?
  inputBinding:
    prefix: --input
- id: in_output
  doc: the directory for output files
  type: Directory?
  inputBinding:
    prefix: --output
- id: in_taxonomy_index
  doc: the index of the gene in the taxonomy data
  type: string?
  inputBinding:
    prefix: --taxonomy_index
- id: in_taxonomy_level
  doc: "the level of taxonomy for the output (if input is from picrust metagenome_contributions.py)\n"
  type: string?
  inputBinding:
    prefix: --taxonomy_level
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: the directory for output files
  type: Directory?
  outputBinding:
    glob: $(inputs.in_output)
hints: []
cwlVersion: v1.1
baseCommand:
- humann2_split_table
