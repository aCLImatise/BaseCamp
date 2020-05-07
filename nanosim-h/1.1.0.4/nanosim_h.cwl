class: CommandLineTool
id: nanosim_h.cwl
inputs:
- id: profile
  doc: error profile - one of precomputed profiles ('ecoli_R7', 'yeast', 'ecoli_R7.3',
    'ecoli_R9_2D', 'ecoli_R9_1D', 'ecoli_UCSC1b') or own directory with an error profile
    [ecoli_R9_2D]
  type: string
  inputBinding:
    prefix: --profile
- id: out_pref
  doc: prefix of output file [simulated]
  type: string
  inputBinding:
    prefix: --out-pref
- id: number
  doc: number of generated reads [10000]
  type: long
  inputBinding:
    prefix: --number
- id: un_align_rate
  doc: rate of unaligned reads [detect from the error profile]
  type: double
  inputBinding:
    prefix: --unalign-rate
- id: mis_rate
  doc: mismatch rate (weight tuning) [1.0]
  type: double
  inputBinding:
    prefix: --mis-rate
- id: ins_rate
  doc: insertion rate (weight tuning) [1.0]
  type: double
  inputBinding:
    prefix: --ins-rate
- id: del_rate
  doc: deletion rate (weight tuning) [1.0]
  type: double
  inputBinding:
    prefix: --del-rate
- id: seed
  doc: initial seed for the pseudorandom number generator (0 for random) [42]
  type: long
  inputBinding:
    prefix: --seed
- id: circular
  doc: circular simulation (linear otherwise)
  type: boolean
  inputBinding:
    prefix: --circular
- id: perfect
  doc: output perfect reads, no mutations
  type: boolean
  inputBinding:
    prefix: --perfect
- id: merge_contigs
  doc: merge contigs from the reference
  type: boolean
  inputBinding:
    prefix: --merge-contigs
- id: rnf
  doc: use RNF format for read names
  type: boolean
  inputBinding:
    prefix: --rnf
- id: rnf_add_cigar
  doc: add cigar to RNF names (not fully debugged, yet)
  type: boolean
  inputBinding:
    prefix: --rnf-add-cigar
- id: max_len
  doc: maximum read length [inf]
  type: long
  inputBinding:
    prefix: --max-len
- id: min_len
  doc: minimum read length [50]
  type: long
  inputBinding:
    prefix: --min-len
- id: km_er_bias
  doc: prohibits homopolymers with length >= n bases in output reads [6]
  type: long
  inputBinding:
    prefix: --kmer-bias
outputs: []
cwlVersion: v1.1
baseCommand:
- nanosim-h
