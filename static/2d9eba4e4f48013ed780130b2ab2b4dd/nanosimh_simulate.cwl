class: CommandLineTool
id: nanosimh_simulate.cwl
inputs:
- id: in_reference
  doc: reference genome in fasta file
  type: File?
  inputBinding:
    prefix: --reference
- id: in_profile
  doc: prefix of training set profiles [training]
  type: string?
  inputBinding:
    prefix: --profile
- id: in_out_pref
  doc: prefix of output file [simulated]
  type: File?
  inputBinding:
    prefix: --out-pref
- id: in_number
  doc: number of generated reads [20000]
  type: long?
  inputBinding:
    prefix: --number
- id: in_mis_rate
  doc: mismatch rate (weight tuning) [1.0]
  type: double?
  inputBinding:
    prefix: --mis-rate
- id: in_ins_rate
  doc: insertion rate (weight tuning) [1.0]
  type: double?
  inputBinding:
    prefix: --ins-rate
- id: in_del_rate
  doc: deletion reate (weight tuning) [1.0]
  type: double?
  inputBinding:
    prefix: --del-rate
- id: in_seed
  doc: "initial seed for the pseudorandom number generator (0\nfor random) [1]"
  type: long?
  inputBinding:
    prefix: --seed
- id: in_circular
  doc: circular simulation (linear otherwise)
  type: boolean?
  inputBinding:
    prefix: --circular
- id: in_perfect
  doc: output perfect reads, no mutations
  type: boolean?
  inputBinding:
    prefix: --perfect
- id: in_merge_contigs
  doc: merge contigs from the reference
  type: boolean?
  inputBinding:
    prefix: --merge-contigs
- id: in_rnf
  doc: use RNF format for read names
  type: boolean?
  inputBinding:
    prefix: --rnf
- id: in_rnf_add_cigar
  doc: add cigar to RNF names (not fully debugged, yet)
  type: boolean?
  inputBinding:
    prefix: --rnf-add-cigar
- id: in_max_len
  doc: maximum read length [inf]
  type: long?
  inputBinding:
    prefix: --max-len
- id: in_min_len
  doc: minimum read length [50]
  type: long?
  inputBinding:
    prefix: --min-len
- id: in_km_er_bias
  doc: "prohibits homopolymers with length >= n bases in\noutput reads [6]"
  type: long?
  inputBinding:
    prefix: --kmer-bias
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out_pref
  doc: prefix of output file [simulated]
  type: File?
  outputBinding:
    glob: $(inputs.in_out_pref)
hints: []
cwlVersion: v1.1
baseCommand:
- nanosimh_simulate
