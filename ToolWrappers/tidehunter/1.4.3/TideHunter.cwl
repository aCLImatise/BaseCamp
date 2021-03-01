class: CommandLineTool
id: TideHunter.cwl
inputs:
- id: in_km_er_length
  doc: k-mer length (no larger than 16) [8]
  type: long?
  inputBinding:
    prefix: --kmer-length
- id: in_window_size
  doc: window size [1]
  type: long?
  inputBinding:
    prefix: --window-size
- id: in_step_size
  doc: INT    step size [1]
  type: boolean?
  inputBinding:
    prefix: --step-size
- id: in_hpc_km_er
  doc: use homopolymer-compressed k-mer [False]
  type: boolean?
  inputBinding:
    prefix: --HPC-kmer
- id: in_min_copy
  doc: INT    minimum copy number of tandem repeat [2]
  type: boolean?
  inputBinding:
    prefix: --min-copy
- id: in_max_diver_g
  doc: INT    maximum allowed divergence rate between two consecutive repeats [0.25]
  type: boolean?
  inputBinding:
    prefix: --max-diverg
- id: in_min_period
  doc: INT    minimum period size of tandem repeat (>=2) [30]
  type: boolean?
  inputBinding:
    prefix: --min-period
- id: in_max_period
  doc: INT    maximum period size of tandem repeat (<=4294967295) [10K]
  type: boolean?
  inputBinding:
    prefix: --max-period
- id: in_match
  doc: INT       match score [2]
  type: boolean?
  inputBinding:
    prefix: --match
- id: in_mismatch
  doc: mismatch penalty [4]
  type: long?
  inputBinding:
    prefix: --mismatch
- id: in_gap_open
  doc: (,INT) gap opening penalty (O1,O2) [4,24]
  type: long?
  inputBinding:
    prefix: --gap-open
- id: in_gap_ext
  doc: "INT(,INT) gap extension penalty (E1,E2) [2,1]\nTideHunter provides three gap\
    \ penalty modes, cost of a g-long gap:\n- convex (default): min{O1+g*E1, O2+g*E2}\n\
    - affine (set O2 as 0): O1+g*E1\n- linear (set O1 as 0): g*E1"
  type: boolean?
  inputBinding:
    prefix: --gap-ext
- id: in_five_prime
  doc: STR    5' adapter sequence (sense strand) [NULL]
  type: boolean?
  inputBinding:
    prefix: --five-prime
- id: in_three_prime
  doc: 3' adapter sequence (anti-sense strand) [NULL]
  type: long?
  inputBinding:
    prefix: --three-prime
- id: in_ada_mat_rat
  doc: minimum match ratio of adapter sequence [0.80]
  type: double?
  inputBinding:
    prefix: --ada-mat-rat
- id: in_output
  doc: STR    output file [stdout]
  type: File?
  inputBinding:
    prefix: --output
- id: in_unit_seq
  doc: only output the unit sequences of each tandem repeat, no consensus sequence
    [False]
  type: boolean?
  inputBinding:
    prefix: --unit-seq
- id: in_longest
  doc: only output the consensus sequence of the tandem repeat that covers the longest
    read sequence [False]
  type: boolean?
  inputBinding:
    prefix: --longest
- id: in_full_len
  doc: only output full-length consensus sequence [False]
  type: boolean?
  inputBinding:
    prefix: --full-len
- id: in_out_fmt
  doc: "INT    output format [1]\n- 1: FASTA\n- 2: Tabular"
  type: boolean?
  inputBinding:
    prefix: --out-fmt
- id: in_thread
  doc: INT    number of threads to use [4]
  type: boolean?
  inputBinding:
    prefix: --thread
- id: in_in_dot_fa
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: STR    output file [stdout]
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/tidehunter:1.4.3--h8b12597_0
cwlVersion: v1.1
baseCommand:
- TideHunter
