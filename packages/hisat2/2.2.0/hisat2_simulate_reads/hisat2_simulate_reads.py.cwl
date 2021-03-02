class: CommandLineTool
id: ../../../hisat2_simulate_reads.py.cwl
inputs:
- id: in_dna
  doc: 'DNA-seq reads (default: RNA-seq reads)'
  type: boolean
  inputBinding:
    prefix: --dna
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
- id: in_repeat_info
  doc: repeat information filename
  type: File
  inputBinding:
    prefix: --repeat-info
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
- id: in_snp_prob
  doc: "probability of a read including a snp when the read\nspans the snp ranging\
    \ from 0.0 to 1.0 (default: 1.0)"
  type: double
  inputBinding:
    prefix: --snp-prob
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
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- hisat2_simulate_reads.py
