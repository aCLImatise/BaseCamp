class: CommandLineTool
id: hmmgs_search.cwl
inputs:
- id: in_normalize_hmm_input
  doc: don't normalize the hmm input
  type: boolean?
  inputBinding:
    prefix: -u
- id: in_prune_search_improve
  doc: prune the search if the score does not improve after n_nodes (default 20, set
    to 0 to disable pruning)
  type: long?
  inputBinding:
    prefix: -p
- id: in_limit_in_seconds
  doc: dtime limit for individual searches (conservative suggestion = 100)
  type: string
  inputBinding:
    position: 0
- id: in_bloom_filter
  doc: bloom filter built using hmmgs build
  type: string
  inputBinding:
    position: 1
- id: in_km_ers
  doc: starting kmers (can use KmerFilter's fast_kmer_filter to identify starting
    kmers)
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- hmmgs
- search
