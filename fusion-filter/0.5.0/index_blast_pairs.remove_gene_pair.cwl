class: CommandLineTool
id: index_blast_pairs.remove_gene_pair.pl.cwl
inputs:
- id: ct_at_genome_lib_dir
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: fusion_name
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- index_blast_pairs.remove_gene_pair.pl
