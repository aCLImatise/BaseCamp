class: CommandLineTool
id: ococo.cwl
inputs:
- id: in_input
  doc: input SAM/BAM file (- for standard input)
  type: File?
  inputBinding:
    prefix: --input
- id: in_fast_a_ref
  doc: initial FASTA reference (otherwise seq of N's is used)
  type: File?
  inputBinding:
    prefix: --fasta-ref
- id: in_stats_in
  doc: input statistics
  type: File?
  inputBinding:
    prefix: --stats-in
- id: in_fast_a_cons
  doc: FASTA file with consensus
  type: File?
  inputBinding:
    prefix: --fasta-cons
- id: in_stats_out
  doc: output statistics
  type: File?
  inputBinding:
    prefix: --stats-out
- id: in_vcf_cons
  doc: VCF file with updates of consensus (- for standard output)
  type: File?
  inputBinding:
    prefix: --vcf-cons
- id: in_pile_up
  doc: truncated pileup (- for standard output)
  type: File?
  inputBinding:
    prefix: --pileup
- id: in_verbose
  doc: verbose mode (report every update of a counter)
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_counters
  doc: "counter configuration: [ococo16]\n- ococo16 (3b/counter, 16b/position)\n-\
    \ ococo32 (7b/counter, 32b/position)\n- ococo64 (15b/counter, 64b/position)"
  type: long?
  inputBinding:
    prefix: --counters
- id: in_mode
  doc: "mode: [batch]\n- real-time (updates reported immediately)\n- batch (updates\
    \ reported after end of algn stream)"
  type: string?
  inputBinding:
    prefix: --mode
- id: in_strategy
  doc: "strategy for updates: [majority]\n- majority (update to majority base)\n-\
    \ stochastic (update to stochastically drawn base)\n- no-updates (no updates,\
    \ only counters updated)"
  type: string?
  inputBinding:
    prefix: --strategy
- id: in_min_mq
  doc: skip alignments with mapping quality smaller than INT [1]
  type: long?
  inputBinding:
    prefix: --min-MQ
- id: in_min_bq
  doc: skip bases with base quality smaller than INT [13]
  type: long?
  inputBinding:
    prefix: --min-BQ
- id: in_ref_weight
  doc: initial counter value for nucleotides from ref [0]
  type: long?
  inputBinding:
    prefix: --ref-weight
- id: in_min_cov
  doc: minimum coverage required for update [2]
  type: long?
  inputBinding:
    prefix: --min-cov
- id: in_maj_th_res
  doc: majority threshold [0.51]
  type: double?
  inputBinding:
    prefix: --maj-thres
- id: in_other
  doc: ''
  type: string?
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_vcf_cons
  doc: VCF file with updates of consensus (- for standard output)
  type: File?
  outputBinding:
    glob: $(inputs.in_vcf_cons)
hints: []
cwlVersion: v1.1
baseCommand:
- ococo
