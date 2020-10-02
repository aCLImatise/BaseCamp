class: CommandLineTool
id: centrifuge_simulate_reads.py.cwl
inputs:
- id: in_rna
  doc: 'RNA-seq reads (default: DNA-seq reads)'
  type: boolean
  inputBinding:
    prefix: --rna
- id: in_single_end
  doc: 'single-end reads (default: paired-end reads)'
  type: boolean
  inputBinding:
    prefix: --single-end
- id: in_read_length
  doc: 'read length (default: 100)'
  type: long
  inputBinding:
    prefix: --read-length
- id: in_fragment_length
  doc: 'fragment length (default: 250)'
  type: long
  inputBinding:
    prefix: --fragment-length
- id: in_num_fragment
  doc: 'number of fragments (default: 1000000)'
  type: long
  inputBinding:
    prefix: --num-fragment
- id: in_expr_profile
  doc: 'expression profile: flux or constant (default: flux)'
  type: string
  inputBinding:
    prefix: --expr-profile
- id: in_error_rate
  doc: 'per-base sequencing error rate (%) (default: 0.0)'
  type: double
  inputBinding:
    prefix: --error-rate
- id: in_max_mismatch
  doc: 'max mismatches due to sequencing errors (default: 3)'
  type: long
  inputBinding:
    prefix: --max-mismatch
- id: in_random_seed
  doc: 'random seeding value (default: 0)'
  type: long
  inputBinding:
    prefix: --random-seed
- id: in_sanity_check
  doc: sanity check
  type: boolean
  inputBinding:
    prefix: --sanity-check
- id: in_verbose
  doc: also print some statistics to stderr
  type: boolean
  inputBinding:
    prefix: --verbose
- id: in_index_fname
  doc: Centrifuge index
  type: string
  inputBinding:
    position: 0
- id: in_base_fname
  doc: output base filename
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- centrifuge_simulate_reads.py
