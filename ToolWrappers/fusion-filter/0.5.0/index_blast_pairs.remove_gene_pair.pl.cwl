class: CommandLineTool
id: index_blast_pairs.remove_gene_pair.pl.cwl
inputs:
- id: in_ct_at_genome_lib_dir
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_fusion_name
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- index_blast_pairs.remove_gene_pair.pl
