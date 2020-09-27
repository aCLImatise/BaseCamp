class: CommandLineTool
id: swarm.cwl
inputs:
- id: in_threads
  doc: number of threads to use (1)
  type: long
  inputBinding:
    prefix: --threads
- id: in_differences
  doc: resolution (1)
  type: long
  inputBinding:
    prefix: --differences
- id: in_no_otu_breaking
  doc: never break OTUs (not recommended!)
  type: boolean
  inputBinding:
    prefix: --no-otu-breaking
- id: in_boundary
  doc: min mass of large OTUs (3)
  type: long
  inputBinding:
    prefix: --boundary
- id: in_ceiling
  doc: max memory in MB for Bloom filter (unlim.)
  type: long
  inputBinding:
    prefix: --ceiling
- id: in_fastidious
  doc: link nearby low-abundance swarms
  type: boolean
  inputBinding:
    prefix: --fastidious
- id: in_bloom_bits
  doc: bits used per Bloom filter entry (16)
  type: long
  inputBinding:
    prefix: --bloom-bits
- id: in_append_abundance
  doc: value to use when abundance is missing
  type: long
  inputBinding:
    prefix: --append-abundance
- id: in_internal_structure
  doc: write internal OTU structure to file
  type: File
  inputBinding:
    prefix: --internal-structure
- id: in_log
  doc: log to file, not to stderr
  type: File
  inputBinding:
    prefix: --log
- id: in_output_file
  doc: output result to file (stdout)
  type: File
  inputBinding:
    prefix: --output-file
- id: in_mo_thur
  doc: output using mothur-like format
  type: boolean
  inputBinding:
    prefix: --mothur
- id: in_statistics_file
  doc: dump OTU statistics to file
  type: File
  inputBinding:
    prefix: --statistics-file
- id: in_uc_lust_file
  doc: output using UCLUST-like format to file
  type: File
  inputBinding:
    prefix: --uclust-file
- id: in_seeds
  doc: write OTU representatives to FASTA file
  type: File
  inputBinding:
    prefix: --seeds
- id: in_u_search_abundance
  doc: abundance annotation in usearch style
  type: boolean
  inputBinding:
    prefix: --usearch-abundance
- id: in_match_reward
  doc: reward for nucleotide match (5)
  type: long
  inputBinding:
    prefix: --match-reward
- id: in_mismatch_penalty
  doc: penalty for nucleotide mismatch (4)
  type: long
  inputBinding:
    prefix: --mismatch-penalty
- id: in_gap_opening_penalty
  doc: gap open penalty (12)
  type: long
  inputBinding:
    prefix: --gap-opening-penalty
- id: in_gap_extension_penalty
  doc: gap extension penalty (4)
  type: long
  inputBinding:
    prefix: --gap-extension-penalty
- id: in_fast_a_file
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_file
  doc: output result to file (stdout)
  type: File
  outputBinding:
    glob: $(inputs.in_output_file)
- id: out_uc_lust_file
  doc: output using UCLUST-like format to file
  type: File
  outputBinding:
    glob: $(inputs.in_uc_lust_file)
cwlVersion: v1.1
baseCommand:
- swarm
