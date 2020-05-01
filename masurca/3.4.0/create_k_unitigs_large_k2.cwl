#!/usr/bin/env cwl-runner

baseCommand:
- create_k_unitigs_large_k2
class: CommandLineTool
cwlVersion: v1.0
id: create_k_unitigs_large_k2
inputs:
- doc: '*k-mer size'
  id: mer
  inputBinding:
    prefix: --mer
  type: long
- doc: '*Estimated number of distinct k-mers'
  id: nb_mers
  inputBinding:
    prefix: --nb-mers
  type: string
- doc: Value field length in hash (7)
  id: val
  inputBinding:
    prefix: --val
  type: long
- doc: Number of threads (1)
  id: threads
  inputBinding:
    prefix: --threads
  type: long
- doc: Ouput file (stdout)
  id: output
  inputBinding:
    prefix: --output
  type: File
- doc: Count threshold for high-quality mers (2)
  id: quality_threshold
  inputBinding:
    prefix: --quality-threshold
  type: string
- doc: Max length of low quality mer run (0)
  id: cont_on_low
  inputBinding:
    prefix: --cont-on-low
  type: string
- doc: Minimum length of k-unitig to output (k+1)
  id: min_len
  inputBinding:
    prefix: --min-len
  type: string
- doc: Gzip output file. Ignored if -o not given. (false)
  id: gzip
  inputBinding:
    prefix: --gzip
  type: boolean
- doc: Load jellyfish hash
  id: load
  inputBinding:
    prefix: --load
  type: File
