class: CommandLineTool
id: KmerFreq_HA.cwl
inputs:
- id: k
  doc: Set kmer size(13~27), default=17.
  type: long
  inputBinding:
    prefix: -k
- id: l
  doc: Set input read file list.
  type: string
  inputBinding:
    prefix: -l
- id: p
  doc: Set the output prefix, default=output.
  type: string
  inputBinding:
    prefix: -p
- id: i
  doc: Set initial size of hash table, default=50000000.
  type: long
  inputBinding:
    prefix: -i
- id: t
  doc: Set thread number, default=1.
  type: long
  inputBinding:
    prefix: -t
- id: l
  doc: Set maximum read length, default=100.
  type: long
  inputBinding:
    prefix: -L
- id: k
  doc: 'Set kmer size(13~27), default=17. Note: kmer size should be set between 13
    and 27.'
  type: long
  inputBinding:
    prefix: -k
- id: r
  doc: "Set read length used to get kmers, default=read's real length. Note: the max\
    \ read length to get kmer frequency spectrum."
  type: long
  inputBinding:
    prefix: -r
- id: a
  doc: 'Set ignored length of the beginning of a read, default=0. Note: set this option
    when sequencing quality is low in the beginning of reads.'
  type: long
  inputBinding:
    prefix: -a
- id: d
  doc: 'Set ignored length of the end of a read, default=0 Note: set this option when
    sequencing quality is low in the end of reads.'
  type: long
  inputBinding:
    prefix: -d
- id: g
  doc: 'Set total bases number used to get kmers, default=all input bases. Note: when
    sequencing depth is too much, you can set this option, about 30X data bases is
    preferred.'
  type: long
  inputBinding:
    prefix: -g
- id: l
  doc: 'Set input read file list. Note: no default value, the address list of reads
    file, each reads files take a line.'
  type: string
  inputBinding:
    prefix: -l
- id: p
  doc: 'Set the output prefix, default=output. Note: often use species name as prefix.'
  type: string
  inputBinding:
    prefix: -p
- id: i
  doc: 'Set initial size of hash table, default=50000000. Note: this is the initial
    size, and program will enlarge the HashSet memory  space (*2 each time) when memeory
    is insufficient.'
  type: long
  inputBinding:
    prefix: -i
- id: t
  doc: 'Set thread number, default=1. Note: the more thread number, the high speed,
    however, this should be less than  the number of CPU cores.'
  type: long
  inputBinding:
    prefix: -t
- id: l
  doc: 'Set maximum read length, default=100. Note: program will alloc memeory buffer
    base on read length, so you should set the maximun read length in the read files.'
  type: long
  inputBinding:
    prefix: -L
- id: f
  doc: 'Set whether use Bloom filter to reduce memory usage, 0:no; 1:yes; default=0.
    Note: reduce memeory usage by using Bloom filter to reduce kmer which frequency
    lower than(<=) 2.'
  type: long
  inputBinding:
    prefix: -f
- id: s
  doc: 'Set the Bloom array size, default=1000000000. Note: you can set by this formula:(genome_size+genome_size*coverage*error_rate*kmer_size)*5/4.'
  type: long
  inputBinding:
    prefix: -s
- id: b
  doc: 'Set the kmer-freq analysis divide into how many steps(=1, 2, 4, 8), default
    =1. Note: the more step, the less memeory usage, but need more time.'
  type: long
  inputBinding:
    prefix: -b
outputs: []
cwlVersion: v1.1
baseCommand:
- KmerFreq_HA
