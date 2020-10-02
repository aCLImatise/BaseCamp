class: CommandLineTool
id: run_rcorrector.pl.cwl
inputs:
- id: in_comma_separated_files
  doc: ': comma separated files for single-end data sets'
  type: string
  inputBinding:
    prefix: -s
- id: in_comma_separated_first
  doc: ': comma separated files for the first mate in the paried-end data sets'
  type: long
  inputBinding:
    prefix: '-1'
- id: in_comma_separated_second
  doc: ': comma separated files for the second mate in the paired-end data sets'
  type: long
  inputBinding:
    prefix: '-2'
- id: in_comma_sperated_files
  doc: ': comma sperated files for interleaved paired-end data sets'
  type: string
  inputBinding:
    prefix: -i
- id: in_max_cork
  doc: ': the maximum number of correction within k-bp window (default: 4)'
  type: long
  inputBinding:
    prefix: -maxcorK
- id: in_wk
  doc: ': the proportion of kmers that are used to estimate weak kmer count threshold,
    lower for more divergent genome (default: 0.95)'
  type: double
  inputBinding:
    prefix: -wk
- id: in_ek
  doc: ': does not affect the correctness of program but affect the memory usage (default:
    100000000)'
  type: long
  inputBinding:
    prefix: -ek
- id: in_stdout
  doc: ': output the corrected reads to stdout (default: not used)'
  type: boolean
  inputBinding:
    prefix: -stdout
- id: in_verbose
  doc: ': output some correction information to stdout (default: not used)'
  type: boolean
  inputBinding:
    prefix: -verbose
- id: in_stage
  doc: ": start from which stage (default: 0)\n0-start from begining(storing kmers\
    \ in bloom filter);\n1-start from count kmers showed up in bloom filter;\n2-start\
    \ from dumping kmer counts into a jf_dump file;\n3-start from error correction.\n"
  type: long
  inputBinding:
    prefix: -stage
- id: in_perl
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- run_rcorrector.pl
