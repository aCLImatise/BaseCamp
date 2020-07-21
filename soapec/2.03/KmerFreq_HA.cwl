class: CommandLineTool
id: ../../../KmerFreq_HA.cwl
inputs:
- id: set_size_default
  doc: Set kmer size(13~27), default=17.
  type: long
  inputBinding:
    prefix: -k
- id: set_input_read
  doc: Set input read file list.
  type: string
  inputBinding:
    prefix: -l
- id: set_output_prefix
  doc: Set the output prefix, default=output.
  type: string
  inputBinding:
    prefix: -p
- id: set_initial_size
  doc: Set initial size of hash table, default=50000000.
  type: long
  inputBinding:
    prefix: -i
- id: set_number_default
  doc: Set thread number, default=1.
  type: long
  inputBinding:
    prefix: -t
- id: set_maximum_read
  doc: Set maximum read length, default=100.
  type: long
  inputBinding:
    prefix: -L
- id: set_read_length
  doc: "Set read length used to get kmers, default=read's real length. Note: the max\
    \ read length to get kmer frequency spectrum."
  type: long
  inputBinding:
    prefix: -r
- id: set_ignored_length_beginning_set_option
  doc: 'Set ignored length of the beginning of a read, default=0. Note: set this option
    when sequencing quality is low in the beginning of reads.'
  type: long
  inputBinding:
    prefix: -a
- id: set_ignored_length_end_set_option
  doc: 'Set ignored length of the end of a read, default=0 Note: set this option when
    sequencing quality is low in the end of reads.'
  type: long
  inputBinding:
    prefix: -d
- id: set_total_bases
  doc: 'Set total bases number used to get kmers, default=all input bases. Note: when
    sequencing depth is too much, you can set this option, about 30X data bases is
    preferred.'
  type: long
  inputBinding:
    prefix: -g
- id: set_use_filter
  doc: 'Set whether use Bloom filter to reduce memory usage, 0:no; 1:yes; default=0.
    Note: reduce memeory usage by using Bloom filter to reduce kmer which frequency
    lower than(<=) 2.'
  type: long
  inputBinding:
    prefix: -f
- id: set_size_note
  doc: 'Set the Bloom array size, default=1000000000. Note: you can set by this formula:(genome_size+genome_size*coverage*error_rate*kmer_size)*5/4.'
  type: long
  inputBinding:
    prefix: -s
- id: set_kmerfreq_analysis
  doc: 'Set the kmer-freq analysis divide into how many steps(=1, 2, 4, 8), default
    =1. Note: the more step, the less memeory usage, but need more time.'
  type: long
  inputBinding:
    prefix: -b
- id: option
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- KmerFreq_HA
