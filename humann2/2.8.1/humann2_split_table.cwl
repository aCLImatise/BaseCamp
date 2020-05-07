class: CommandLineTool
id: humann2_split_table.cwl
inputs:
- id: verbose
  doc: additional output is printed
  type: boolean
  inputBinding:
    prefix: --verbose
- id: input
  doc: the gene table to read
  type: string
  inputBinding:
    prefix: --input
- id: output
  doc: the directory for output files
  type: string
  inputBinding:
    prefix: --output
- id: taxonomy_index
  doc: the index of the gene in the taxonomy data
  type: string
  inputBinding:
    prefix: --taxonomy_index
- id: taxonomy_level
  doc: the level of taxonomy for the output (if input is from picrust metagenome_contributions.py)
  type: string
  inputBinding:
    prefix: --taxonomy_level
outputs: []
cwlVersion: v1.1
baseCommand:
- humann2_split_table
