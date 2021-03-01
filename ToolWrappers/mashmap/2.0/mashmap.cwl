class: CommandLineTool
id: mashmap.cwl
inputs:
- id: in_ref
  doc: an input reference file (fasta/fastq)[.gz]
  type: File?
  inputBinding:
    prefix: --ref
- id: in_ref_list
  doc: a file containing list of reference files, one per line
  type: File?
  inputBinding:
    prefix: --refList
- id: in_query
  doc: an input query file (fasta/fastq)[.gz]
  type: File?
  inputBinding:
    prefix: --query
- id: in_query_list
  doc: a file containing list of query files, one per line
  type: File?
  inputBinding:
    prefix: --queryList
- id: in_seg_length
  doc: "mapping segment length [default : 5,000]\nsequences shorter than segment length\
    \ will be ignored"
  type: long?
  inputBinding:
    prefix: --segLength
- id: in_no_split
  doc: disable splitting of input sequences during mapping [enabled by default]
  type: boolean?
  inputBinding:
    prefix: --noSplit
- id: in_perc_identity
  doc: 'threshold for identity [default : 85]'
  type: long?
  inputBinding:
    prefix: --perc_identity
- id: in_threads
  doc: 'count of threads for parallel execution [default : 1]'
  type: long?
  inputBinding:
    prefix: --threads
- id: in_output
  doc: 'output file name [default : mashmap.out]'
  type: File?
  inputBinding:
    prefix: --output
- id: in_km_er
  doc: 'kmer size <= 16 [default : 16]'
  type: long?
  inputBinding:
    prefix: --kmer
- id: in_filter_mode
  doc: "filter modes in mashmap: 'map', 'one-to-one' or 'none' [default: map]\n'map'\
    \ computes best mappings for each query sequence\n'one-to-one' computes best mappings\
    \ for query as well as reference sequence\n'none' disables filtering\n"
  type: string?
  inputBinding:
    prefix: --filter_mode
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: 'output file name [default : mashmap.out]'
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
hints: []
cwlVersion: v1.1
baseCommand:
- mashmap
