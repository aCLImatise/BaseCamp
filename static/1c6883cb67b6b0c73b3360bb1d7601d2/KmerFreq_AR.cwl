class: CommandLineTool
id: KmerFreq_AR.cwl
inputs:
- id: k
  doc: 'Set the kmer size, default=17. Note: when k=17, kmer theoretic number is 4^17
    = 16G, store 1 byte for a kmer, the kmer frequency spectrum will use  16G memory(k=16,
    4G; k=18, 64G).'
  type: long
  inputBinding:
    prefix: -k
- id: s
  doc: "Set the size of space-seed in kmer, default=0. Note: for consecutive kmer,\
    \ use default value: 0; for space-kmer, set this  option and make sure it is set\
    \ to be one even number when kmer size is  odd number(for reverse and complement\
    \ kmer). When kmer size is one even number, the space-kmer format will be like\
    \ this(for k=10, s=5): 'ATTCG-----GTACG'. When kmer size is odd number, the space-kmer\
    \ format will be like this(for k=11, s=4):  'ATTCG--A--GTACG'."
  type: long
  inputBinding:
    prefix: -s
- id: c
  doc: 'Set min precision rate for kmer, default=-1. Note: program caculate the precision
    of kmer base on the quality score, set between 0~0.99, or -1 for unrestrained.'
  type: double
  inputBinding:
    prefix: -c
- id: t
  doc: 'Set the thread number, default=1. Note: the more thread number, the high speed,
    however, this should be less than  the number of CPU cores.'
  type: long
  inputBinding:
    prefix: -t
- id: q
  doc: 'Set the ASCII shift of the quality value(Q_SHIFT), default=64. Note: usually
    64 or 33 for Illumina data.'
  type: long
  inputBinding:
    prefix: -q
- id: m
  doc: "Set whether to output kmers depth file, 1:yes, 0:no, default=1. Note: if you\
    \ just want to get the distribution curve of kmer frequency, set '-m 0'."
  type: long
  inputBinding:
    prefix: -m
- id: b
  doc: 'Set total bases number used to get kmers, default: all the bases of read files.
    Note: when sequencing depth is too much, you can set this option, about 30X data
    bases is preferred.'
  type: long
  inputBinding:
    prefix: -b
- id: p
  doc: 'Set the output prefix, default=output. Note: often use species name as prefix.'
  type: string
  inputBinding:
    prefix: -p
outputs: []
cwlVersion: v1.1
baseCommand:
- KmerFreq_AR
