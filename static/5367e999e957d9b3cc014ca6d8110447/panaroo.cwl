class: CommandLineTool
id: panaroo.cwl
inputs:
- id: threads
  doc: number of threads to use (default=1)
  type: string
  inputBinding:
    prefix: --threads
- id: quiet
  doc: suppress additional output
  type: boolean
  inputBinding:
    prefix: --quiet
- id: input
  doc: input GFF3 files (usually output from running Prokka). Can also take a file
    listing each gff file line by line.
  type: string[]
  inputBinding:
    prefix: --input
- id: out_dir
  doc: location of an output directory
  type: string
  inputBinding:
    prefix: --out_dir
- id: clean_mode
  doc: "The stringency mode at which to run panaroo. Must be one of 'strict','moderate'\
    \ or 'sensitive'. Each of these modes can be fine tuned using the additional parameters\
    \ in the 'Graph correction' section. strict: Requires fairly strong evidence (present\
    \ in  at least 5% of genomes) to keep likely contaminant genes. Will remove genes\
    \ that are refound more often than they were called originally. moderate: Requires\
    \ moderate evidence (present in  at least 1% of genomes) to keep likely contaminant\
    \ genes. Keeps genes that are refound more often than they were called originally.\
    \ sensitive: Does not delete any genes and only performes merge and refinding\
    \ operations. Useful if rare plasmids are of interest as these are often hard\
    \ to disguish from contamination. Results will likely include  higher number of\
    \ spurious annotations."
  type: string
  inputBinding:
    prefix: --clean-mode
- id: threshold
  doc: sequence identity threshold (default=0.95)
  type: string
  inputBinding:
    prefix: --threshold
- id: family_threshold
  doc: protein family sequence identity threshold (default=0.7)
  type: string
  inputBinding:
    prefix: --family_threshold
- id: len_dif_percent
  doc: length difference cutoff (default=0.95)
  type: string
  inputBinding:
    prefix: --len_dif_percent
- id: merge_paralogs
  doc: don't split paralogs
  type: boolean
  inputBinding:
    prefix: --merge_paralogs
- id: search_radius
  doc: the distance in nucleotides surronding the neighbour of an accessory gene in
    which to search for it
  type: string
  inputBinding:
    prefix: --search_radius
- id: re_find_prop_match
  doc: the proportion of an accessory gene that must be found in order to consider
    it a match
  type: string
  inputBinding:
    prefix: --refind_prop_match
- id: min_trailing_support
  doc: minimum cluster size to keep a gene called at the end of a contig
  type: long
  inputBinding:
    prefix: --min_trailing_support
- id: trailing_recursive
  doc: number of times to perform recursive trimming of low support nodes near the
    end of contigs
  type: string
  inputBinding:
    prefix: --trailing_recursive
- id: edge_support_threshold
  doc: minimum support required to keep and edge that has been flagged as a possible
    mis-assembly
  type: string
  inputBinding:
    prefix: --edge_support_threshold
- id: length_outlier_support_proportion
  doc: proportion of genomes supporting a gene with a length more than 1.5x outside
    the interquatile range for genes in the same cluster (default=0.01). Genes failing
    this test will be re-annotated at the shorter length
  type: long
  inputBinding:
    prefix: --length_outlier_support_proportion
- id: remove_by_consensus
  doc: if a gene is called in the same region with similar sequence a minority of
    the time, remove it. One of 'True' or 'False'
  type: string
  inputBinding:
    prefix: --remove_by_consensus
- id: high_var_flag
  doc: minimum number of nested cycles to call a highly variable gene region (default
    = 5).
  type: string
  inputBinding:
    prefix: --high_var_flag
- id: min_edge_support_sv
  doc: minimum edge support required to call structural variants in the presence/absence
    sv file
  type: long
  inputBinding:
    prefix: --min_edge_support_sv
- id: all_seq_in_graph
  doc: Retains all DNA sequence for each gene cluster in the graph output. Off by
    default as it uses a large amount of space.
  type: boolean
  inputBinding:
    prefix: --all_seq_in_graph
- id: no_clean_edges
  doc: Turn off edge filtering in the final output graph.
  type: boolean
  inputBinding:
    prefix: --no_clean_edges
- id: alignment
  doc: "Output alignments of core genes or all genes. Options are 'core' and 'pan'.\
    \ Default: 'None'"
  type: string
  inputBinding:
    prefix: --alignment
- id: aligner
  doc: "Specify an aligner. Options:'prank', 'clustal', and default: 'mafft'"
  type: string
  inputBinding:
    prefix: --aligner
- id: core_threshold
  doc: Core-genome sample threshold (default=0.95)
  type: string
  inputBinding:
    prefix: --core_threshold
outputs: []
cwlVersion: v1.1
baseCommand:
- panaroo
