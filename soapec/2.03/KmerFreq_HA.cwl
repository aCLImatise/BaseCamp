#!/usr/bin/env cwl-runner

baseCommand:
- KmerFreq_HA
class: CommandLineTool
cwlVersion: v1.0
id: kmerfreq_ha
inputs:
- doc: Set kmer size(13~27), default=17.
  id: k
  inputBinding:
    prefix: -k
  type: long
- doc: Set input read file list.
  id: l
  inputBinding:
    prefix: -l
  type: string
- doc: Set the output prefix, default=output.
  id: p
  inputBinding:
    prefix: -p
  type: string
- doc: Set initial size of hash table, default=50000000.
  id: i
  inputBinding:
    prefix: -i
  type: long
- doc: Set thread number, default=1.
  id: t
  inputBinding:
    prefix: -t
  type: long
- doc: Set maximum read length, default=100.
  id: l
  inputBinding:
    prefix: -L
  type: long
- doc: 'Set kmer size(13~27), default=17. Note: kmer size should be set between 13
    and 27.'
  id: k
  inputBinding:
    prefix: -k
  type: long
- doc: "Set read length used to get kmers, default=read's real length. Note: the max\
    \ read length to get kmer frequency spectrum."
  id: r
  inputBinding:
    prefix: -r
  type: long
- doc: 'Set ignored length of the beginning of a read, default=0. Note: set this option
    when sequencing quality is low in the beginning of reads.'
  id: a
  inputBinding:
    prefix: -a
  type: long
- doc: 'Set ignored length of the end of a read, default=0 Note: set this option when
    sequencing quality is low in the end of reads.'
  id: d
  inputBinding:
    prefix: -d
  type: long
- doc: 'Set total bases number used to get kmers, default=all input bases. Note: when
    sequencing depth is too much, you can set this option, about 30X data bases is
    preferred.'
  id: g
  inputBinding:
    prefix: -g
  type: long
- doc: 'Set input read file list. Note: no default value, the address list of reads
    file, each reads files take a line.'
  id: l
  inputBinding:
    prefix: -l
  type: string
- doc: 'Set the output prefix, default=output. Note: often use species name as prefix.'
  id: p
  inputBinding:
    prefix: -p
  type: string
- doc: 'Set initial size of hash table, default=50000000. Note: this is the initial
    size, and program will enlarge the HashSet memory  space (*2 each time) when memeory
    is insufficient.'
  id: i
  inputBinding:
    prefix: -i
  type: long
- doc: 'Set thread number, default=1. Note: the more thread number, the high speed,
    however, this should be less than  the number of CPU cores.'
  id: t
  inputBinding:
    prefix: -t
  type: long
- doc: 'Set maximum read length, default=100. Note: program will alloc memeory buffer
    base on read length, so you should set the maximun read length in the read files.'
  id: l
  inputBinding:
    prefix: -L
  type: long
- doc: 'Set whether use Bloom filter to reduce memory usage, 0:no; 1:yes; default=0.
    Note: reduce memeory usage by using Bloom filter to reduce kmer which frequency
    lower than(<=) 2.'
  id: f
  inputBinding:
    prefix: -f
  type: long
- doc: 'Set the Bloom array size, default=1000000000. Note: you can set by this formula:(genome_size+genome_size*coverage*error_rate*kmer_size)*5/4.'
  id: s
  inputBinding:
    prefix: -s
  type: long
- doc: 'Set the kmer-freq analysis divide into how many steps(=1, 2, 4, 8), default
    =1. Note: the more step, the less memeory usage, but need more time.'
  id: b
  inputBinding:
    prefix: -b
  type: long
