class: CommandLineTool
id: yak_count.cwl
inputs:
- id: in_kmer_size
  doc: k-mer size [31]
  type: long?
  inputBinding:
    prefix: -k
- id: in_prefix_length
  doc: prefix length [10]
  type: long?
  inputBinding:
    prefix: -p
- id: in_set_bloom_size
  doc: set Bloom filter size to 2**INT bits; 0 to disable [0]
  type: long?
  inputBinding:
    prefix: -b
- id: in_use_int_functions
  doc: use INT hash functions for Bloom filter [4]
  type: long?
  inputBinding:
    prefix: -H
- id: in_number_worker_threads
  doc: number of worker threads [4]
  type: long?
  inputBinding:
    prefix: -t
- id: in_dump_count_table
  doc: dump the count hash table to FILE []
  type: File?
  inputBinding:
    prefix: -o
- id: in_chunk_size
  doc: chunk size [100m]
  type: long?
  inputBinding:
    prefix: -K
- id: in_in_dot_fa
  doc: ''
  type: string?
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/yak:0.1--hed695b0_0
cwlVersion: v1.1
baseCommand:
- yak
- count
