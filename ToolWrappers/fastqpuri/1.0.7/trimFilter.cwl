class: CommandLineTool
id: trimFilter.cwl
inputs:
- id: in_if_q
  doc: fastq input file [*fq|*fq.gz|*fq.bz2], mandatory option.
  type: boolean?
  inputBinding:
    prefix: --ifq
- id: in_length
  doc: 'read length: length of the reads, mandatory option.'
  type: boolean?
  inputBinding:
    prefix: --length
- id: in_output
  doc: output prefix (with path), optional (default ./out).
  type: File?
  inputBinding:
    prefix: --output
- id: in_gzip
  doc: 'gzip output files: yes or no (default yes)'
  type: boolean?
  inputBinding:
    prefix: --gzip
- id: in_adapter
  doc: "input. Three fields separated by colons:\n<ADAPTERS.fa>: fasta file containing\
    \ adapters,\n<mismatches>: maximum mismatch count allowed,\n<score>: score threshold\
    \  for the aligner."
  type: File?
  inputBinding:
    prefix: --adapter
- id: in_idx
  doc: "index input file. To be included with methods to remove.\ncontaminations (TREE,\
    \ BLOOM). 3 fields separated by colons:\n<INDEX_FILE>: output of makeTree, makeBloom,\n\
    <score>: score threshold to accept a match [0,1],\n[lmer_len]: the length of the\
    \ lmers to be\nlooked for in the reads [1,READ_LENGTH]."
  type: boolean?
  inputBinding:
    prefix: --idx
- id: in_if_a
  doc: "fasta input file of potential contaminations.\nTo be included only with method\
    \ TREE\n(it excludes the option --idx). Otherwise, an\nindex file has to be precomputed\
    \ and given as parameter\n(see option --idx). 3 fields separated by colons:\n\
    <INPUT.fa>: fasta input file [*fa|*fa.gz|*fa.bz2],\n<score>: score threshold to\
    \ accept a match [0,1],\n<lmer_len>: depth of the tree: [1,READ_LENGTH].\nCorresponds\
    \ to the length of the lmers to be\nlooked for in the reads."
  type: boolean?
  inputBinding:
    prefix: --ifa
- id: in_method
  doc: "method used to look for contaminations:\nTREE:  uses a 4-ary tree. Index file\
    \ optional,\nBLOOM: uses a bloom filter. Index file mandatory."
  type: boolean?
  inputBinding:
    prefix: --method
- id: in_trim_q
  doc: "NO:       does nothing to low quality reads (default),\nALL:      removes\
    \ all reads containing at least one low\nquality nucleotide.\nENDS:     trims\
    \ the ends of the read if their quality is\nbelow the threshold -q,\nFRAC:   \
    \  discards a read if the fraction of bases with\nlow quality scores (below -q)\
    \ is over 5 percent\nor a user defined percentage (-p).\nENDSFRAC: trims the ends\
    \ and then discards the read if\nthere are more low quality nucleotides than\n\
    allowed by the option -p.\nGLOBAL:   removes n1 bases on the left and n2 on the\n\
    right, specified in -g.\nAll reads are discarded if they are shorter than MINL\n\
    (specified with -m or --minL)."
  type: boolean?
  inputBinding:
    prefix: --trimQ
- id: in_min_l
  doc: "minimum length allowed for a read before it is discarded\n(default 25)."
  type: boolean?
  inputBinding:
    prefix: --minL
- id: in_min_q
  doc: minimum quality allowed (int), optional (default 27).
  type: boolean?
  inputBinding:
    prefix: --minQ
- id: in_zero_q
  doc: value of ASCII character representing zero quality (int), optional (default
    33).
  type: boolean?
  inputBinding:
    prefix: --zeroQ
- id: in_percent
  doc: "of low quality bases tolerated before\ndiscarding a read (default 5),"
  type: long?
  inputBinding:
    prefix: --percent
- id: in_global
  doc: "required option if --trimQ GLOBAL is passed. Two int,\nn1:n2, have to be passed\
    \ specifying the number of bases\nto be globally cut from the left and right,\
    \ respectively."
  type: boolean?
  inputBinding:
    prefix: --global
- id: in_trim_n
  doc: "NO:     does nothing to reads containing N's,\nALL:    removes all reads containing\
    \ N's,\nENDS:   trims ends of reads with N's,\nSTRIPS: looks for the largest substring\
    \ with no N's.\nAll reads are discarded if they are shorter than the\nsequence\
    \ length specified by -m/--minL.\n"
  type: boolean?
  inputBinding:
    prefix: --trimN
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: output prefix (with path), optional (default ./out).
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
hints: []
cwlVersion: v1.1
baseCommand:
- trimFilter
