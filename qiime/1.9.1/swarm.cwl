class: CommandLineTool
id: swarm.cwl
inputs:
- id: differences
  doc: resolution (1)
  type: long
  inputBinding:
    prefix: --differences
- id: output_file
  doc: output result filename (stdout)
  type: File
  inputBinding:
    prefix: --output-file
- id: threads
  doc: number of threads to use (1)
  type: long
  inputBinding:
    prefix: --threads
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
- id: statistics_file
  doc: dump swarm statistics to file (no)
  type: File
  inputBinding:
    prefix: --statistics-file
- id: uc_lust_file
  doc: output in UCLUST-like format to file (no)
  type: File
  inputBinding:
    prefix: --uclust-file
- id: break_swarms
  doc: output all pairs of amplicons found (no)
  type: boolean
  inputBinding:
    prefix: --break-swarms
- id: mo_thur
  doc: output in mothur list file format (no)
  type: boolean
  inputBinding:
    prefix: --mothur
- id: alternative_algorithm
  doc: use an alternative algorithm when d=1
  type: boolean
  inputBinding:
    prefix: --alternative-algorithm
- id: u_search_abundance
  doc: abundance annotation in usearch style
  type: boolean
  inputBinding:
    prefix: --usearch_abundance
outputs: []
cwlVersion: v1.1
baseCommand:
- swarm
