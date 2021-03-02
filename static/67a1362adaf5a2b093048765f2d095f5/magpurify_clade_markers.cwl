class: CommandLineTool
id: magpurify_clade_markers.cwl
inputs:
- id: in_db
  doc: "Path to reference database. By default, the MAGPURIFY\nenvironmental variable\
    \ is used (default: None)"
  type: File?
  inputBinding:
    prefix: --db
- id: in_exclude_clades
  doc: "List of clades to exclude (ex: s__Variovorax_sp_CF313)\n(default: None)"
  type: string[]
  inputBinding:
    prefix: --exclude_clades
- id: in_min_bin_fract
  doc: "Min fraction of bin length supported by contigs that\nagree with consensus\
    \ taxonomy (default: 0.6)"
  type: long?
  inputBinding:
    prefix: --min_bin_fract
- id: in_min_contig_fract
  doc: "Min fraction of classified contig length that agree\nwith consensus taxonomy\
    \ (default: 0.75)"
  type: long?
  inputBinding:
    prefix: --min_contig_fract
- id: in_min_gene_fract
  doc: "Min fraction of classified genes that agree with\nconsensus taxonomy (default:\
    \ 0.0)"
  type: long?
  inputBinding:
    prefix: --min_gene_fract
- id: in_min_genes
  doc: "Min number of genes that agree with consensus taxonomy\n(default=rank-specific-cutoffs)\
    \ (default: None)"
  type: long?
  inputBinding:
    prefix: --min_genes
- id: in_lowest_rank
  doc: 'Lowest rank for bin classification (default: None)'
  type: string?
  inputBinding:
    prefix: --lowest_rank
- id: in_threads
  doc: 'Number of CPUs to use (default: 1)'
  type: long?
  inputBinding:
    prefix: --threads
- id: in_fna
  doc: Path to input genome in FASTA format
  type: string
  inputBinding:
    position: 0
- id: in_out
  doc: Output directory to store results and intermediate
  type: string
  inputBinding:
    position: 1
- id: in_files
  doc: 'optional arguments:'
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- magpurify
- clade-markers
