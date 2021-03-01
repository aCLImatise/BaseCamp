class: CommandLineTool
id: KmerFreq_AR.cwl
inputs:
- id: in_set_kmer_size
  doc: "Set the kmer size, default=17.\nNote: when k=17, kmer theoretic number is\
    \ 4^17 = 16G,\nstore 1 byte for a kmer, the kmer frequency spectrum will use\n\
    16G memory(k=16, 4G; k=18, 64G)."
  type: long?
  inputBinding:
    prefix: -k
- id: in_set_size_defaultnote
  doc: "Set the size of space-seed in kmer, default=0.\nNote: for consecutive kmer,\
    \ use default value: 0; for space-kmer, set this\noption and make sure it is set\
    \ to be one even number when kmer size is\nodd number(for reverse and complement\
    \ kmer). When kmer size is one even number,\nthe space-kmer format will be like\
    \ this(for k=10, s=5): 'ATTCG-----GTACG'.\nWhen kmer size is odd number, the space-kmer\
    \ format will be like this(for k=11, s=4):\n'ATTCG--A--GTACG'."
  type: long?
  inputBinding:
    prefix: -s
- id: in_set_min_precision
  doc: "Set min precision rate for kmer, default=-1.\nNote: program caculate the precision\
    \ of kmer base on the quality score,\nset between 0~0.99, or -1 for unrestrained."
  type: double?
  inputBinding:
    prefix: -c
- id: in_set_thread_number
  doc: "Set the thread number, default=1.\nNote: the more thread number, the high\
    \ speed, however, this should be less than\nthe number of CPU cores."
  type: long?
  inputBinding:
    prefix: -t
- id: in_set_ascii_shift
  doc: "Set the ASCII shift of the quality value(Q_SHIFT), default=64.\nNote: usually\
    \ 64 or 33 for Illumina data."
  type: long?
  inputBinding:
    prefix: -q
- id: in_set_output_kmers
  doc: "Set whether to output kmers depth file, 1:yes, 0:no, default=1.\nNote: if\
    \ you just want to get the distribution curve of kmer frequency, set '-m 0'."
  type: File?
  inputBinding:
    prefix: -m
- id: in_set_total_number
  doc: "Set total bases number used to get kmers, default: all the bases of read files.\n\
    Note: when sequencing depth is too much, you can set this option, about 30X\n\
    data bases is preferred."
  type: long?
  inputBinding:
    prefix: -b
- id: in_set_output_prefix
  doc: "Set the output prefix, default=output.\nNote: often use species name as prefix."
  type: string?
  inputBinding:
    prefix: -p
- id: in_usage_kmerfreqar_readsfileslist
  doc: 'Usage:  KmerFreq_AR [OPTION] <reads_files_list>'
  type: long
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_set_output_kmers
  doc: "Set whether to output kmers depth file, 1:yes, 0:no, default=1.\nNote: if\
    \ you just want to get the distribution curve of kmer frequency, set '-m 0'."
  type: File?
  outputBinding:
    glob: $(inputs.in_set_output_kmers)
hints: []
cwlVersion: v1.1
baseCommand:
- KmerFreq_AR
