class: CommandLineTool
id: igdiscover_discover.cwl
inputs:
- id: threads
  doc: 'Number of threads. Default: no. of available CPUs, but at most 4'
  type: string
  inputBinding:
    prefix: --threads
- id: seed
  doc: Seed value for random numbers for reproducible runs.
  type: string
  inputBinding:
    prefix: --seed
- id: consensus_threshold
  doc: 'Threshold for consensus computation. Default: 60%'
  type: string
  inputBinding:
    prefix: --consensus-threshold
- id: gene
  doc: 'Compute consensus for this gene. Can be given multiple times. Default: Compute
    for all genes.'
  type: string
  inputBinding:
    prefix: --gene
- id: limit
  doc: 'Skip remaining genes as soon as at least N candidates were generated. Default:
    No limit'
  type: string
  inputBinding:
    prefix: --limit
- id: left
  doc: 'For consensus, include only sequences that have at least this error rate (in
    percent). Default: 0'
  type: string
  inputBinding:
    prefix: --left
- id: right
  doc: 'For consensus, include only sequences that have at most this error rate (in
    percent). Default: 100'
  type: string
  inputBinding:
    prefix: --right
- id: window_width
  doc: 'Compute consensus for all PERCENT-wide windows. Set to 0 to disable. Default:
    2'
  type: string
  inputBinding:
    prefix: --window-width
- id: no_cluster
  doc: Do not run linkage cluster analysis.
  type: boolean
  inputBinding:
    prefix: --no-cluster
- id: cluster_exact
  doc: 'Treat N exact occurrences of a sequence as a cluster. Default: Do not cluster
    exact occurrences'
  type: string
  inputBinding:
    prefix: --cluster-exact
- id: max_n_bases
  doc: 'Remove rows that have more than MAXN "N" nucleotides. If >0, an N_bases column
    is added. Default: 0'
  type: long
  inputBinding:
    prefix: --max-n-bases
- id: subsample
  doc: 'When clustering, use N randomly chosen sequences. Default: 1000'
  type: string
  inputBinding:
    prefix: --subsample
- id: ignore_j
  doc: Include also rows without J assignment or J%SHM>0.
  type: boolean
  inputBinding:
    prefix: --ignore-J
- id: exact_copies
  doc: 'When subsampling, first pick rows whose V gene sequenceshave at least N exact
    copies in the input. Default: 1'
  type: string
  inputBinding:
    prefix: --exact-copies
- id: d_evalue
  doc: 'For Ds_exact, require D matches with an E-value of at most EVALUE. Default:
    0.0001'
  type: string
  inputBinding:
    prefix: --d-evalue
- id: d_coverage
  doc: 'For Ds_exact, require D matches with a minimum D coverage of COVERAGE (in
    percent). Default: 70)'
  type: string
  inputBinding:
    prefix: --d-coverage
- id: clo_no_type_diff
  doc: 'When clustering CDR3s to computer the no. of clonotypes, allow DIFFERENCES
    between (nucleotide-)sequences. Default: 6'
  type: string
  inputBinding:
    prefix: --clonotype-diff
- id: table_output
  doc: Output tables for all analyzed genes to DIRECTORY. Files will be named <GENE>.tab.
  type: Directory
  inputBinding:
    prefix: --table-output
- id: database
  doc: FASTA file with V genes. If provided, differences between consensus and database
    will be computed.
  type: string
  inputBinding:
    prefix: --database
- id: read_names
  doc: Write names of reads with exact matches used in discovering each candidate
    to FILE
  type: File
  inputBinding:
    prefix: --read-names
outputs: []
cwlVersion: v1.1
baseCommand:
- igdiscover
- discover
