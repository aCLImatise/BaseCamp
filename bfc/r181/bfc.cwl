class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/bfc.cwl
inputs:
- id: approx_genome_size
  doc: approx genome size (k/m/g allowed; change -k and -b) [unset]
  type: double
  inputBinding:
    prefix: -s
- id: kmer_length
  doc: k-mer length [33]
  type: long
  inputBinding:
    prefix: -k
- id: number_of_threads
  doc: number of threads [1]
  type: long
  inputBinding:
    prefix: -t
- id: set_bloom_size
  doc: set Bloom filter size to pow(2,INT) bits [33]
  type: long
  inputBinding:
    prefix: -b
- id: use_int_functions
  doc: use INT hash functions for Bloom filter [4]
  type: long
  inputBinding:
    prefix: -H
- id: dump_hash_table
  doc: dump hash table to FILE [null]
  type: File
  inputBinding:
    prefix: -d
- id: skip_error_correction
  doc: skip error correction
  type: boolean
  inputBinding:
    prefix: -E
- id: refine_bfccorrected_reads
  doc: refine bfc-corrected reads
  type: boolean
  inputBinding:
    prefix: -R
- id: restore_hash_table
  doc: restore hash table from FILE [null]
  type: File
  inputBinding:
    prefix: -r
- id: more_ec_ec
  doc: no more than 5 ec or 2 highQ ec in INT-bp window [10]
  type: long
  inputBinding:
    prefix: -w
- id: min_kmer_coverage
  doc: min k-mer coverage [3]
  type: long
  inputBinding:
    prefix: -c
- id: force_fasta_output
  doc: force FASTA output
  type: boolean
  inputBinding:
    prefix: -Q
- id: drop_reads_containing
  doc: drop reads containing unique k-mers
  type: boolean
  inputBinding:
    prefix: '-1'
- id: show_version_number
  doc: show version number
  type: boolean
  inputBinding:
    prefix: -v
- id: to_count_dot_fq
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: to_correct_dot_fq
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- bfc
