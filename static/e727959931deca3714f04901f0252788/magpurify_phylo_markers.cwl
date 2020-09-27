class: CommandLineTool
id: magpurify_phylo_markers.cwl
inputs:
- id: in_db
  doc: "Path to reference database. By default, the\nMAGPURIFYDB environmental variable\
    \ is used (default:\nNone)"
  type: File
  inputBinding:
    prefix: --db
- id: in_continue
  doc: "Go straight to quality estimation and skip all\nprevious steps (default: False)"
  type: boolean
  inputBinding:
    prefix: --continue
- id: in_max_target_seqs
  doc: "Maximum number of targets reported in BLAST table\n(default: 1)"
  type: long
  inputBinding:
    prefix: --max_target_seqs
- id: in_cut_off_type
  doc: "Use strict or sensitive %ID cutoff for taxonomically\nannotating genes (default:\
    \ strict)"
  type: string
  inputBinding:
    prefix: --cutoff_type
- id: in_seq_type
  doc: "Choose to search genes versus DNA or protein database\n(default: protein)"
  type: string
  inputBinding:
    prefix: --seq_type
- id: in_hit_type
  doc: "Transfer taxonomy of all hits or top hit per gene\n(default: top_hit)"
  type: string
  inputBinding:
    prefix: --hit_type
- id: in_exclude_clades
  doc: "List of clades to exclude (ex: s__1300164.4) (default:\nNone)"
  type: string[]
  inputBinding:
    prefix: --exclude_clades
- id: in_bin_fract
  doc: "Min fraction of genes in bin that agree with consensus\ntaxonomy for bin annotation\
    \ (default: 0.7)"
  type: long
  inputBinding:
    prefix: --bin_fract
- id: in_contig_fract
  doc: "Min fraction of genes in that disagree with bin\ntaxonomy for filtering (default:\
    \ 1.0)"
  type: long
  inputBinding:
    prefix: --contig_fract
- id: in_allow_no_class
  doc: "Allow a bin to be unclassfied and flag any classified\ncontigs (default: False)"
  type: boolean
  inputBinding:
    prefix: --allow_noclass
- id: in_threads
  doc: 'Number of CPUs to use (default: 1)'
  type: long
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
cwlVersion: v1.1
baseCommand:
- magpurify
- phylo-markers
