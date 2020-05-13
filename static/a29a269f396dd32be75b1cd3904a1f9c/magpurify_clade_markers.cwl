class: CommandLineTool
id: magpurify_clade_markers.cwl
inputs:
- id: fna
  doc: Path to input genome in FASTA format
  type: string
  inputBinding:
    position: 0
- id: out
  doc: Output directory to store results and intermediate files
  type: string
  inputBinding:
    position: 1
- id: db
  doc: 'Path to reference database. By default, the MAGPURIFY environmental variable
    is used (default: None)'
  type: string
  inputBinding:
    prefix: --db
- id: exclude_clades
  doc: 'List of clades to exclude (ex: s__Variovorax_sp_CF313) (default: None)'
  type: string[]
  inputBinding:
    prefix: --exclude_clades
- id: min_bin_fract
  doc: 'Min fraction of bin length supported by contigs that agree with consensus
    taxonomy (default: 0.6)'
  type: long
  inputBinding:
    prefix: --min_bin_fract
- id: min_contig_fract
  doc: 'Min fraction of classified contig length that agree with consensus taxonomy
    (default: 0.75)'
  type: long
  inputBinding:
    prefix: --min_contig_fract
- id: min_gene_fract
  doc: 'Min fraction of classified genes that agree with consensus taxonomy (default:
    0.0)'
  type: long
  inputBinding:
    prefix: --min_gene_fract
- id: min_genes
  doc: 'Min number of genes that agree with consensus taxonomy (default=rank-specific-cutoffs)
    (default: None)'
  type: long
  inputBinding:
    prefix: --min_genes
- id: lowest_rank
  doc: 'Lowest rank for bin classification (default: None)'
  type: string
  inputBinding:
    prefix: --lowest_rank
- id: threads
  doc: 'Number of CPUs to use (default: 1)'
  type: string
  inputBinding:
    prefix: --threads
outputs: []
cwlVersion: v1.1
baseCommand:
- magpurify
- clade-markers
