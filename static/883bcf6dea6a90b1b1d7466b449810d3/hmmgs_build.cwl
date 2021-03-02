class: CommandLineTool
id: hmmgs_build.cwl
inputs:
- id: in_read_file
  doc: 'fasta or fastq files containing the reads to build the graph from '
  type: string
  inputBinding:
    position: 0
- id: in_bloom_out
  doc: 'file to write the bloom filter to '
  type: string
  inputBinding:
    position: 1
- id: in_km_er_size
  doc: 'should be multiple of 3, (recommend 45, maximum 63) '
  type: string
  inputBinding:
    position: 2
- id: in_bloom_size_log_two
  doc: the size of the bloom filter (or memory needed) is 2^bloomSizeLog2 bits, increase
    if the predicted false positive rate is greater than 1%
  type: long
  inputBinding:
    position: 3
- id: in_cut_off
  doc: minimum number of times a kmer has to be observed in SEQFILE to be included
    in the final bloom filter
  type: string
  inputBinding:
    position: 4
- id: in_hash_count
  doc: number of hash functions, default 4
  type: string
  inputBinding:
    position: 5
- id: in_bit_set_size_log_two
  doc: the size of one bitSet 2^bitsetSizeLog2, recommend 30, usually not changed
  type: long
  inputBinding:
    position: 6
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- hmmgs
- build
