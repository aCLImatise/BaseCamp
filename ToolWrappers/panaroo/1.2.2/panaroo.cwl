class: CommandLineTool
id: panaroo.cwl
inputs:
- id: in_clean_mode
  doc: '[-c ID]'
  type: string?
  inputBinding:
    prefix: --clean-mode
- id: in_threads
  doc: number of threads to use (default=1)
  type: long?
  inputBinding:
    prefix: --threads
- id: in_quiet
  doc: suppress additional output
  type: boolean?
  inputBinding:
    prefix: --quiet
- id: in_input
  doc: "input GFF3 files (usually output from running Prokka).\nCan also take a file\
    \ listing each gff file line by\nline."
  type: string[]
  inputBinding:
    prefix: --input
- id: in_out_dir
  doc: location of an output directory
  type: Directory?
  inputBinding:
    prefix: --out_dir
- id: in_threshold
  doc: sequence identity threshold (default=0.95)
  type: double?
  inputBinding:
    prefix: --threshold
- id: in_family_threshold
  doc: "protein family sequence identity threshold\n(default=0.7)"
  type: double?
  inputBinding:
    prefix: --family_threshold
- id: in_len_dif_percent
  doc: length difference cutoff (default=0.95)
  type: long?
  inputBinding:
    prefix: --len_dif_percent
- id: in_merge_paralogs
  doc: don't split paralogs
  type: boolean?
  inputBinding:
    prefix: --merge_paralogs
- id: in_search_radius
  doc: "the distance in nucleotides surronding the neighbour\nof an accessory gene\
    \ in which to search for it"
  type: string?
  inputBinding:
    prefix: --search_radius
- id: in_re_find_prop_match
  doc: "the proportion of an accessory gene that must be found\nin order to consider\
    \ it a match"
  type: string?
  inputBinding:
    prefix: --refind_prop_match
- id: in_min_trailing_support
  doc: "minimum cluster size to keep a gene called at the end\nof a contig"
  type: long?
  inputBinding:
    prefix: --min_trailing_support
- id: in_trailing_recursive
  doc: "number of times to perform recursive trimming of low\nsupport nodes near the\
    \ end of contigs"
  type: long?
  inputBinding:
    prefix: --trailing_recursive
- id: in_edge_support_threshold
  doc: "minimum support required to keep and edge that has\nbeen flagged as a possible\
    \ mis-assembly"
  type: string?
  inputBinding:
    prefix: --edge_support_threshold
- id: in_length_outlier_support_proportion
  doc: "proportion of genomes supporting a gene with a length\nmore than 1.5x outside\
    \ the interquatile range for\ngenes in the same cluster (default=0.01). Genes\n\
    failing this test will be re-annotated at the shorter\nlength"
  type: long?
  inputBinding:
    prefix: --length_outlier_support_proportion
- id: in_remove_by_consensus
  doc: "if a gene is called in the same region with similar\nsequence a minority of\
    \ the time, remove it. One of\n'True' or 'False'"
  type: string?
  inputBinding:
    prefix: --remove_by_consensus
- id: in_high_var_flag
  doc: "minimum number of nested cycles to call a highly\nvariable gene region (default\
    \ = 5)."
  type: long?
  inputBinding:
    prefix: --high_var_flag
- id: in_min_edge_support_sv
  doc: "minimum edge support required to call structural\nvariants in the presence/absence\
    \ sv file"
  type: long?
  inputBinding:
    prefix: --min_edge_support_sv
- id: in_all_seq_in_graph
  doc: "Retains all DNA sequence for each gene cluster in the\ngraph output. Off by\
    \ default as it uses a large amount\nof space."
  type: boolean?
  inputBinding:
    prefix: --all_seq_in_graph
- id: in_no_clean_edges
  doc: Turn off edge filtering in the final output graph.
  type: boolean?
  inputBinding:
    prefix: --no_clean_edges
- id: in_alignment
  doc: "Output alignments of core genes or all genes. Options\nare 'core' and 'pan'.\
    \ Default: 'None'"
  type: string?
  inputBinding:
    prefix: --alignment
- id: in_aligner
  doc: "Specify an aligner. Options:'prank', 'clustal', and\ndefault: 'mafft'"
  type: string?
  inputBinding:
    prefix: --aligner
- id: in_core_threshold
  doc: "Core-genome sample threshold (default=0.95)\n"
  type: double?
  inputBinding:
    prefix: --core_threshold
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out_dir
  doc: location of an output directory
  type: Directory?
  outputBinding:
    glob: $(inputs.in_out_dir)
hints: []
cwlVersion: v1.1
baseCommand:
- panaroo
