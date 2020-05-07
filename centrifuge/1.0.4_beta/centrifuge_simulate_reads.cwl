class: CommandLineTool
id: centrifuge_simulate_reads.py.cwl
inputs:
- id: index_fname
  doc: Centrifuge index
  type: string
  inputBinding:
    position: 0
- id: base_fname
  doc: output base filename
  type: string
  inputBinding:
    position: 1
- id: rna
  doc: 'RNA-seq reads (default: DNA-seq reads)'
  type: boolean
  inputBinding:
    prefix: --rna
- id: single_end
  doc: 'single-end reads (default: paired-end reads)'
  type: boolean
  inputBinding:
    prefix: --single-end
- id: read_length
  doc: 'read length (default: 100)'
  type: string
  inputBinding:
    prefix: --read-length
- id: fragment_length
  doc: 'fragment length (default: 250)'
  type: string
  inputBinding:
    prefix: --fragment-length
- id: num_fragment
  doc: 'number of fragments (default: 1000000)'
  type: string
  inputBinding:
    prefix: --num-fragment
- id: expr_profile
  doc: 'expression profile: flux or constant (default: flux)'
  type: string
  inputBinding:
    prefix: --expr-profile
- id: error_rate
  doc: 'per-base sequencing error rate (%) (default: 0.0)'
  type: string
  inputBinding:
    prefix: --error-rate
- id: max_mismatch
  doc: 'max mismatches due to sequencing errors (default: 3)'
  type: long
  inputBinding:
    prefix: --max-mismatch
- id: random_seed
  doc: 'random seeding value (default: 0)'
  type: string
  inputBinding:
    prefix: --random-seed
- id: sanity_check
  doc: sanity check
  type: boolean
  inputBinding:
    prefix: --sanity-check
- id: verbose
  doc: also print some statistics to stderr
  type: boolean
  inputBinding:
    prefix: --verbose
outputs: []
cwlVersion: v1.1
baseCommand:
- centrifuge_simulate_reads.py
