class: CommandLineTool
id: ococo.cwl
inputs:
- id: input
  doc: input SAM/BAM file (- for standard input)
  type: File
  inputBinding:
    prefix: --input
- id: fast_a_ref
  doc: initial FASTA reference (otherwise seq of N's is used)
  type: File
  inputBinding:
    prefix: --fasta-ref
- id: stats_in
  doc: input statistics
  type: File
  inputBinding:
    prefix: --stats-in
- id: fast_a_cons
  doc: FASTA file with consensus
  type: File
  inputBinding:
    prefix: --fasta-cons
- id: stats_out
  doc: output statistics
  type: File
  inputBinding:
    prefix: --stats-out
- id: vcf_cons
  doc: VCF file with updates of consensus (- for standard output)
  type: File
  inputBinding:
    prefix: --vcf-cons
- id: pile_up
  doc: truncated pileup (- for standard output)
  type: File
  inputBinding:
    prefix: --pileup
- id: verbose
  doc: verbose mode (report every update of a counter)
  type: boolean
  inputBinding:
    prefix: --verbose
- id: counters
  doc: 'counter configuration: [ococo16] - ococo16 (3b/counter, 16b/position) - ococo32
    (7b/counter, 32b/position) - ococo64 (15b/counter, 64b/position)'
  type: string
  inputBinding:
    prefix: --counters
- id: mode
  doc: 'mode: [batch] - real-time (updates reported immediately) - batch (updates
    reported after end of algn stream)'
  type: string
  inputBinding:
    prefix: --mode
- id: strategy
  doc: 'strategy for updates: [majority] - majority (update to majority base) - stochastic
    (update to stochastically drawn base) - no-updates (no updates, only counters
    updated)'
  type: string
  inputBinding:
    prefix: --strategy
- id: min_mq
  doc: skip alignments with mapping quality smaller than INT [1]
  type: long
  inputBinding:
    prefix: --min-MQ
- id: min_bq
  doc: skip bases with base quality smaller than INT [13]
  type: long
  inputBinding:
    prefix: --min-BQ
- id: ref_weight
  doc: initial counter value for nucleotides from ref [0]
  type: long
  inputBinding:
    prefix: --ref-weight
- id: min_cov
  doc: minimum coverage required for update [2]
  type: long
  inputBinding:
    prefix: --min-cov
- id: maj_th_res
  doc: majority threshold [0.51]
  type: double
  inputBinding:
    prefix: --maj-thres
outputs: []
cwlVersion: v1.1
baseCommand:
- ococo
