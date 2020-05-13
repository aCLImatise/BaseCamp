class: CommandLineTool
id: TideHunter.cwl
inputs:
- id: km_er_length
  doc: '[INT]    k-mer length (no larger than 16). [8]'
  type: boolean
  inputBinding:
    prefix: --kmer-length
- id: window_size
  doc: '[INT]    window size. [1]'
  type: boolean
  inputBinding:
    prefix: --window-size
- id: step_size
  doc: '[INT]    step size. [1]'
  type: boolean
  inputBinding:
    prefix: --step-size
- id: hpc_km_er
  doc: use homopolymer-compressed k-mer. [False]
  type: boolean
  inputBinding:
    prefix: --HPC-kmer
- id: min_copy
  doc: '[INT]    minimum copy number of tandem repeat. [2]'
  type: boolean
  inputBinding:
    prefix: --min-copy
- id: max_diver_g
  doc: '[INT]    maximum allowed divergence rate between two consecutive repeats.
    [0.25]'
  type: boolean
  inputBinding:
    prefix: --max-diverg
- id: min_period
  doc: '[INT]    minimum period size of tandem repeat. (>=2) [30]'
  type: boolean
  inputBinding:
    prefix: --min-period
- id: max_period
  doc: '[INT]    maximum period size of tandem repeat. (<=4294967295) [100K]'
  type: boolean
  inputBinding:
    prefix: --max-period
- id: ada_mat_rat
  doc: '[FLT]    minimum match ratio of adapter sequence. [0.80]'
  type: boolean
  inputBinding:
    prefix: --ada-mat-rat
- id: cons_out
  doc: '[STR]    output file. [stdout]'
  type: boolean
  inputBinding:
    prefix: --cons-out
- id: longest
  doc: only output the consensus of the longest tandem repeat. [False]
  type: boolean
  inputBinding:
    prefix: --longest
- id: full_len
  doc: only output the consensus that is full-length. [False]
  type: boolean
  inputBinding:
    prefix: --full-len
- id: out_fmt
  doc: '[INT]    output format. [1] 1: FASTA 2: Tabular'
  type: boolean
  inputBinding:
    prefix: --out-fmt
- id: thread
  doc: '[INT]    number of threads to use. [1]'
  type: boolean
  inputBinding:
    prefix: --thread
outputs: []
cwlVersion: v1.1
baseCommand:
- TideHunter
