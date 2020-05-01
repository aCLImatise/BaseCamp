#!/usr/bin/env cwl-runner

baseCommand:
- poppunk_sketch
class: CommandLineTool
cwlVersion: v1.0
id: poppunk_sketch
inputs:
- doc: Create a database of sketches
  id: sketch
  inputBinding:
    prefix: --sketch
  type: boolean
- doc: Find distances between two sketch databases
  id: query
  inputBinding:
    prefix: --query
  type: boolean
- doc: Samples to sketch
  id: r_file
  inputBinding:
    prefix: --rfile
  type: string
- doc: Prefix of reference database file
  id: ref_db
  inputBinding:
    prefix: --ref-db
  type: string
- doc: Prefix of query database file
  id: query_db
  inputBinding:
    prefix: --query-db
  type: string
- doc: Minimum kmer length [default = 13]
  id: min_k
  inputBinding:
    prefix: --min-k
  type: long
- doc: Maximum kmer length [default = 29]
  id: max_k
  inputBinding:
    prefix: --max-k
  type: long
- doc: K-mer step size [default = 4]
  id: k_step
  inputBinding:
    prefix: --k-step
  type: string
- doc: Kmer sketch size [default = 10000]
  id: sketch_size
  inputBinding:
    prefix: --sketch-size
  type: string
- doc: Minimum k-mer count from reads [default = 20]
  id: min_count
  inputBinding:
    prefix: --min-count
  type: long
- doc: Number of CPUs to use [default = 1]
  id: cpus
  inputBinding:
    prefix: --cpus
  type: string
