class: CommandLineTool
id: swarm.cwl
inputs:
- id: options
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: fast_a_file
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: threads
  doc: number of threads to use (1)
  type: long
  inputBinding:
    prefix: --threads
- id: differences
  doc: resolution (1)
  type: long
  inputBinding:
    prefix: --differences
- id: no_otu_breaking
  doc: never break OTUs (not recommended!)
  type: boolean
  inputBinding:
    prefix: --no-otu-breaking
- id: boundary
  doc: min mass of large OTUs (3)
  type: long
  inputBinding:
    prefix: --boundary
- id: ceiling
  doc: max memory in MB for Bloom filter (unlim.)
  type: long
  inputBinding:
    prefix: --ceiling
- id: fastidious
  doc: link nearby low-abundance swarms
  type: boolean
  inputBinding:
    prefix: --fastidious
- id: bloom_bits
  doc: bits used per Bloom filter entry (16)
  type: long
  inputBinding:
    prefix: --bloom-bits
- id: append_abundance
  doc: value to use when abundance is missing
  type: long
  inputBinding:
    prefix: --append-abundance
- id: internal_structure
  doc: write internal OTU structure to file
  type: File
  inputBinding:
    prefix: --internal-structure
- id: log
  doc: log to file, not to stderr
  type: File
  inputBinding:
    prefix: --log
- id: output_file
  doc: output result to file (stdout)
  type: File
  inputBinding:
    prefix: --output-file
- id: mo_thur
  doc: output using mothur-like format
  type: boolean
  inputBinding:
    prefix: --mothur
- id: statistics_file
  doc: dump OTU statistics to file
  type: File
  inputBinding:
    prefix: --statistics-file
- id: uc_lust_file
  doc: output using UCLUST-like format to file
  type: File
  inputBinding:
    prefix: --uclust-file
- id: seeds
  doc: write OTU representatives to FASTA file
  type: File
  inputBinding:
    prefix: --seeds
- id: u_search_abundance
  doc: abundance annotation in usearch style
  type: boolean
  inputBinding:
    prefix: --usearch-abundance
- id: match_reward
  doc: reward for nucleotide match (5)
  type: long
  inputBinding:
    prefix: --match-reward
- id: mismatch_penalty
  doc: penalty for nucleotide mismatch (4)
  type: long
  inputBinding:
    prefix: --mismatch-penalty
- id: gap_opening_penalty
  doc: gap open penalty (12)
  type: long
  inputBinding:
    prefix: --gap-opening-penalty
- id: gap_extension_penalty
  doc: gap extension penalty (4)
  type: long
  inputBinding:
    prefix: --gap-extension-penalty
outputs: []
cwlVersion: v1.1
baseCommand:
- swarm
