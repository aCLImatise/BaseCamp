class: CommandLineTool
id: ../../../faithpd.cwl
inputs:
- id: input_biom_table
  doc: The input BIOM table.
  type: boolean
  inputBinding:
    prefix: -i
- id: input_phylogeny_newick
  doc: The input phylogeny in newick.
  type: boolean
  inputBinding:
    prefix: -t
- id: the_output_series
  doc: The output series.
  type: boolean
  inputBinding:
    prefix: -o
outputs: []
cwlVersion: v1.1
baseCommand:
- faithpd
