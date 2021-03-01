class: CommandLineTool
id: KmerFreq_HA.cwl
inputs:
- id: in_set_kmer_size
  doc: "Set kmer size(13~27), default=17.\nNote: kmer size should be set between 13\
    \ and 27."
  type: long?
  inputBinding:
    prefix: -k
- id: in_set_read_length
  doc: "Set read length used to get kmers, default=read's real length.\nNote: the\
    \ max read length to get kmer frequency spectrum."
  type: long?
  inputBinding:
    prefix: -r
- id: in_a
  doc: "Set ignored length of the beginning of a read, default=0.\nNote: set this\
    \ option when sequencing quality is low in the beginning of reads."
  type: long?
  inputBinding:
    prefix: -a
- id: in_d
  doc: "Set ignored length of the end of a read, default=0\nNote: set this option\
    \ when sequencing quality is low in the end of reads."
  type: long?
  inputBinding:
    prefix: -d
- id: in_set_total_number
  doc: "Set total bases number used to get kmers, default=all input bases.\nNote:\
    \ when sequencing depth is too much, you can set this option, about 30X\ndata\
    \ bases is preferred."
  type: long?
  inputBinding:
    prefix: -g
- id: in_set_input_read
  doc: "Set input read file list.\nNote: no default value, the address list of reads\
    \ file, each reads files take a line."
  type: File?
  inputBinding:
    prefix: -l
- id: in_set_output_prefix
  doc: "Set the output prefix, default=output.\nNote: often use species name as prefix."
  type: string?
  inputBinding:
    prefix: -p
- id: in_set_initial_size
  doc: "Set initial size of hash table, default=50000000.\nNote: this is the initial\
    \ size, and program will enlarge the HashSet memory\nspace (*2 each time) when\
    \ memeory is insufficient."
  type: long?
  inputBinding:
    prefix: -i
- id: in_set_thread_number
  doc: "Set thread number, default=1.\nNote: the more thread number, the high speed,\
    \ however, this should be less than\nthe number of CPU cores."
  type: long?
  inputBinding:
    prefix: -t
- id: in_set_maximum_read
  doc: "Set maximum read length, default=100.\nNote: program will alloc memeory buffer\
    \ base on read length, so you should set the\nmaximun read length in the read\
    \ files."
  type: long?
  inputBinding:
    prefix: -L
- id: in_set_use_filter
  doc: "Set whether use Bloom filter to reduce memory usage, 0:no; 1:yes; default=0.\n\
    Note: reduce memeory usage by using Bloom filter to reduce kmer which frequency\
    \ lower than(<=) 2."
  type: long?
  inputBinding:
    prefix: -f
- id: in_set_bloom_size
  doc: "Set the Bloom array size, default=1000000000.\nNote: you can set by this formula:(genome_size+genome_size*coverage*error_rate*kmer_size)*5/4."
  type: long?
  inputBinding:
    prefix: -s
- id: in_set_kmerfreq_analysis
  doc: "Set the kmer-freq analysis divide into how many steps(=1, 2, 4, 8), default\
    \ =1.\nNote: the more step, the less memeory usage, but need more time."
  type: long?
  inputBinding:
    prefix: -b
- id: in_usage__kmerfreqha
  doc: 'Usage:  KmerFreq_HA [OPTION]'
  type: long
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- KmerFreq_HA
