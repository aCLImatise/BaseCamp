class: CommandLineTool
id: rcorrector.cwl
inputs:
- id: in_seqfile_path_sequence
  doc: ': seq_file is the path to the sequence file. Can use multiple -r to specifiy
    multiple sequence files'
  type: File?
  inputBinding:
    prefix: -r
- id: in_seqfileright_paths_use
  doc: 'seq_file_right: the paths to the paired-end data set. Can use multiple -p
    to specifiy multiple sequence files'
  type: File?
  inputBinding:
    prefix: -p
- id: in_seqfile_path_interleaved
  doc: ': seq_file is the path to the interleaved mate-pair sequence file. Can use
    multiple -i'
  type: File?
  inputBinding:
    prefix: -i
- id: in_kmer_counts_dumped
  doc: ': the kmer counts dumped by JellyFish'
  type: string?
  inputBinding:
    prefix: -c
- id: in_threads_use_default
  doc: 'of threads to use (default: 1)'
  type: long?
  inputBinding:
    prefix: -t
- id: in_max_cor
  doc: ': the maximum number of correction every 100bp (default: 8)'
  type: long?
  inputBinding:
    prefix: -maxcor
- id: in_max_cork
  doc: ': the maximum number of correction within k-bp window (default: 4)'
  type: long?
  inputBinding:
    prefix: -maxcorK
- id: in_wk
  doc: ': the proportion of kmers that are used to estimate weak kmer count threshold
    (default: 0.95)'
  type: double?
  inputBinding:
    prefix: -wk
- id: in_stdout
  doc: ': output the corrected sequences to stdout (default: not used)'
  type: boolean?
  inputBinding:
    prefix: -stdout
- id: in_verbose
  doc: ': output some correction information to stdout (default: not used)'
  type: boolean?
  inputBinding:
    prefix: -verbose
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- rcorrector
