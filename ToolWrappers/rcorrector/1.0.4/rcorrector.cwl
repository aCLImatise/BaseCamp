class: CommandLineTool
id: rcorrector.cwl
inputs:
- id: in_seqfile_path_sequence
  doc: ": seq_file is the path to the sequence file. Can use multiple -r to specifiy\
    \ multiple sequence files\n-p seq_file_left seq_file_right: the paths to the paired-end\
    \ data set. Can use multiple -p to specifiy multiple sequence files\n-i seq_file:\
    \ seq_file is the path to the interleaved mate-pair sequence file. Can use multiple\
    \ -i\n-c jf_dump: the kmer counts dumped by JellyFish\n-k kmer_length"
  type: File
  inputBinding:
    prefix: -r
- id: in_threads_use_default
  doc: 'of threads to use (default: 1)'
  type: long
  inputBinding:
    prefix: -t
- id: in_max_cor
  doc: ': the maximum number of correction every 100bp (default: 8)'
  type: long
  inputBinding:
    prefix: -maxcor
- id: in_max_cork
  doc: ': the maximum number of correction within k-bp window (default: 4)'
  type: long
  inputBinding:
    prefix: -maxcorK
- id: in_wk
  doc: ': the proportion of kmers that are used to estimate weak kmer count threshold
    (default: 0.95)'
  type: double
  inputBinding:
    prefix: -wk
- id: in_stdout
  doc: ': output the corrected sequences to stdout (default: not used)'
  type: boolean
  inputBinding:
    prefix: -stdout
- id: in_verbose
  doc: ': output some correction information to stdout (default: not used)'
  type: boolean
  inputBinding:
    prefix: -verbose
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- rcorrector
