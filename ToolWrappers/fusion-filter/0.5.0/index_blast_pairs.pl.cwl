class: CommandLineTool
id: index_blast_pairs.pl.cwl
inputs:
- id: in_output_index_filename
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_blast_pairs_dot_gene_sym_do_tgz
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_blast_pairs_supp_dot_gene_sym_do_tgz
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- index_blast_pairs.pl
