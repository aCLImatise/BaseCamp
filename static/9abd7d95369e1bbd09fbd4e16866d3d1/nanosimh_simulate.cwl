class: CommandLineTool
id: nanosimh_simulate.cwl
inputs:
- id: reference
  doc: reference genome in fasta file
  type: string
  inputBinding:
    prefix: --reference
- id: profile
  doc: prefix of training set profiles [training]
  type: string
  inputBinding:
    prefix: --profile
- id: out_pref
  doc: prefix of output file [simulated]
  type: string
  inputBinding:
    prefix: --out-pref
- id: number
  doc: number of generated reads [20000]
  type: long
  inputBinding:
    prefix: --number
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
  doc: deletion reate (weight tuning) [1.0]
  type: double
  inputBinding:
    prefix: --del-rate
- id: seed
  doc: initial seed for the pseudorandom number generator (0 for random) [1]
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
- nanosimh_simulate
