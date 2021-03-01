class: CommandLineTool
id: faithpd.cwl
inputs:
- id: in_input_biom_table
  doc: The input BIOM table.
  type: boolean?
  inputBinding:
    prefix: -i
- id: in_input_phylogeny_newick
  doc: The input phylogeny in newick.
  type: boolean?
  inputBinding:
    prefix: -t
- id: in_the_output_series
  doc: The output series.
  type: boolean?
  inputBinding:
    prefix: -o
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- faithpd
