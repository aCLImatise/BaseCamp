#!/usr/bin/env cwl-runner

baseCommand:
- centrifuge_simulate_reads.py
class: CommandLineTool
cwlVersion: v1.0
id: centrifuge_simulate_reads.py
inputs:
- doc: Centrifuge index
  id: index_fname
  inputBinding:
    position: 0
  type: string
- doc: output base filename
  id: base_fname
  inputBinding:
    position: 1
  type: string
- doc: 'RNA-seq reads (default: DNA-seq reads)'
  id: rna
  inputBinding:
    prefix: --rna
  type: boolean
- doc: 'single-end reads (default: paired-end reads)'
  id: single_end
  inputBinding:
    prefix: --single-end
  type: boolean
- doc: 'read length (default: 100)'
  id: read_length
  inputBinding:
    prefix: --read-length
  type: string
- doc: 'fragment length (default: 250)'
  id: fragment_length
  inputBinding:
    prefix: --fragment-length
  type: string
- doc: 'number of fragments (default: 1000000)'
  id: num_fragment
  inputBinding:
    prefix: --num-fragment
  type: string
- doc: 'expression profile: flux or constant (default: flux)'
  id: expr_profile
  inputBinding:
    prefix: --expr-profile
  type: string
- doc: 'per-base sequencing error rate (%) (default: 0.0)'
  id: error_rate
  inputBinding:
    prefix: --error-rate
  type: string
- doc: 'max mismatches due to sequencing errors (default: 3)'
  id: max_mismatch
  inputBinding:
    prefix: --max-mismatch
  type: long
- doc: 'random seeding value (default: 0)'
  id: random_seed
  inputBinding:
    prefix: --random-seed
  type: string
- doc: sanity check
  id: sanity_check
  inputBinding:
    prefix: --sanity-check
  type: boolean
- doc: also print some statistics to stderr
  id: verbose
  inputBinding:
    prefix: --verbose
  type: boolean
