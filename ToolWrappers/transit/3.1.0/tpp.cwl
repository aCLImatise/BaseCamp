class: CommandLineTool
id: ../../../tpp.cwl
inputs:
- id: in_protocol
  doc: '[Sassetti|Tn5|Mme1] # which sample prep protocol was used?; sassetti protocol
    is the default; this sets the default transposon and primer sequence'
  type: boolean
  inputBinding:
    prefix: -protocol
- id: in_primer
  doc: '# prefix of reads corresponding to end of transposon at junction with genomic
    sequence; can override default seq'
  type: string
  inputBinding:
    prefix: -primer
- id: in_max_reads
  doc: ''
  type: long
  inputBinding:
    prefix: -maxreads
- id: in_mismatches
  doc: '# when searching for constant regions in reads 1 and 2; default is 1'
  type: long
  inputBinding:
    prefix: -mismatches
- id: in_flags
  doc: '"<STRING>"  # args to pass to BWA'
  type: boolean
  inputBinding:
    prefix: -flags
- id: in_bwa_alg
  doc: '[aln|mem]  # Default: mem. Algorithm to use for mapping reads with bwa'
  type: boolean
  inputBinding:
    prefix: -bwa-alg
- id: in_primer_start_window
  doc: ',INT # position in read to search for start of primer; default is [0,20]'
  type: long
  inputBinding:
    prefix: -primer-start-window
- id: in_window_size
  doc: '# automatic method to set window'
  type: long
  inputBinding:
    prefix: -window-size
- id: in_bar_seq_catalog_out
  doc: ''
  type: File
  inputBinding:
    prefix: -barseq_catalog_out
- id: in_replicon_ids
  doc: "# if multiple replicons/genomes/contigs/sequences were provided in -ref, give\
    \ them names.\n# Enter 'auto' for autogenerated ids.\n"
  type: string
  inputBinding:
    prefix: -replicon-ids
- id: in_output
  doc: ''
  type: File
  inputBinding:
    prefix: -output
- id: in_reads_two
  doc: ''
  type: File
  inputBinding:
    prefix: -reads2
- id: in_reads_one
  doc: ''
  type: File
  inputBinding:
    prefix: -reads1
- id: in_ref
  doc: ''
  type: File
  inputBinding:
    prefix: -ref
- id: in_bwa
  doc: ''
  type: File
  inputBinding:
    prefix: -bwa
- id: in_optional
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_args
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- tpp