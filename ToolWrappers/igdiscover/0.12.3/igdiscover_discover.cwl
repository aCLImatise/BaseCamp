class: CommandLineTool
id: igdiscover_discover.cwl
inputs:
- id: in_threads
  doc: "Number of threads. Default: no. of available CPUs, but\nat most 4"
  type: long?
  inputBinding:
    prefix: --threads
- id: in_seed
  doc: Seed value for random numbers for reproducible runs.
  type: string?
  inputBinding:
    prefix: --seed
- id: in_consensus_threshold
  doc: 'Threshold for consensus computation. Default: 60%'
  type: long?
  inputBinding:
    prefix: --consensus-threshold
- id: in_gene
  doc: "Compute consensus for this gene. Can be given multiple\ntimes. Default: Compute\
    \ for all genes."
  type: string?
  inputBinding:
    prefix: --gene
- id: in_limit
  doc: "Skip remaining genes as soon as at least N candidates\nwere generated. Default:\
    \ No limit"
  type: string?
  inputBinding:
    prefix: --limit
- id: in_left
  doc: "For consensus, include only sequences that have at\nleast this error rate\
    \ (in percent). Default: 0"
  type: long?
  inputBinding:
    prefix: --left
- id: in_right
  doc: "For consensus, include only sequences that have at\nmost this error rate (in\
    \ percent). Default: 100"
  type: long?
  inputBinding:
    prefix: --right
- id: in_window_width
  doc: "Compute consensus for all PERCENT-wide windows. Set to\n0 to disable. Default:\
    \ 2"
  type: long?
  inputBinding:
    prefix: --window-width
- id: in_no_cluster
  doc: Do not run linkage cluster analysis.
  type: boolean?
  inputBinding:
    prefix: --no-cluster
- id: in_cluster_exact
  doc: "Treat N exact occurrences of a sequence as a cluster.\nDefault: Do not cluster\
    \ exact occurrences"
  type: string?
  inputBinding:
    prefix: --cluster-exact
- id: in_max_n_bases
  doc: "Remove rows that have more than MAXN \"N\" nucleotides.\nIf >0, an N_bases\
    \ column is added. Default: 0"
  type: long?
  inputBinding:
    prefix: --max-n-bases
- id: in_subsample
  doc: "When clustering, use N randomly chosen sequences.\nDefault: 1000"
  type: long?
  inputBinding:
    prefix: --subsample
- id: in_ignore_j
  doc: Include also rows without J assignment or J%SHM>0.
  type: boolean?
  inputBinding:
    prefix: --ignore-J
- id: in_exact_copies
  doc: "When subsampling, first pick rows whose V gene\nsequenceshave at least N exact\
    \ copies in the input.\nDefault: 1"
  type: long?
  inputBinding:
    prefix: --exact-copies
- id: in_d_evalue
  doc: "For Ds_exact, require D matches with an E-value of at\nmost EVALUE. Default:\
    \ 0.0001"
  type: double?
  inputBinding:
    prefix: --d-evalue
- id: in_d_coverage
  doc: "For Ds_exact, require D matches with a minimum D\ncoverage of COVERAGE (in\
    \ percent). Default: 70)"
  type: long?
  inputBinding:
    prefix: --d-coverage
- id: in_clo_no_type_diff
  doc: "When clustering CDR3s to computer the no. of\nclonotypes, allow DIFFERENCES\
    \ between\n(nucleotide-)sequences. Default: 6"
  type: long?
  inputBinding:
    prefix: --clonotype-diff
- id: in_table_output
  doc: "Output tables for all analyzed genes to DIRECTORY.\nFiles will be named <GENE>.tab."
  type: Directory?
  inputBinding:
    prefix: --table-output
- id: in_database
  doc: "FASTA file with V genes. If provided, differences\nbetween consensus and database\
    \ will be computed."
  type: File?
  inputBinding:
    prefix: --database
- id: in_read_names
  doc: "Write names of reads with exact matches used in\ndiscovering each candidate\
    \ to FILE\n"
  type: File?
  inputBinding:
    prefix: --read-names
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_table_output
  doc: "Output tables for all analyzed genes to DIRECTORY.\nFiles will be named <GENE>.tab."
  type: Directory?
  outputBinding:
    glob: $(inputs.in_table_output)
hints: []
cwlVersion: v1.1
baseCommand:
- igdiscover
- discover
