class: CommandLineTool
id: ptrimmer.cwl
inputs:
- id: in_keep
  doc: "keep the complete reads if failed to locate primer\nsequence [default: discard\
    \ the reads]"
  type: boolean?
  inputBinding:
    prefix: --keep
- id: in_seqtype
  doc: '[required] the sequencing type [single|pair]'
  type: boolean?
  inputBinding:
    prefix: --seqtype
- id: in_amp_file
  doc: '[required] input amplicon file [.txt]'
  type: boolean?
  inputBinding:
    prefix: --ampfile
- id: in_read_one
  doc: '[required] read1(forward) for fastq file [.fq|.gz]'
  type: boolean?
  inputBinding:
    prefix: --read1
- id: in_trim_one
  doc: '[required] the trimed read1 of fastq file'
  type: boolean?
  inputBinding:
    prefix: --trim1
- id: in_read_two
  doc: '[optional] read2(reverse) for fastq file (paired-end seqtype) [.fq|.gz]'
  type: boolean?
  inputBinding:
    prefix: --read2
- id: in_trim_two
  doc: '[optional] the trimed read2 of fastq file (paired-end seqtype)'
  type: boolean?
  inputBinding:
    prefix: --trim2
- id: in_summary
  doc: '[optional] the trimming information of each amplicon [default: Summary.ampcount]'
  type: boolean?
  inputBinding:
    prefix: --summary
- id: in_min_qual
  doc: '[optional] the minimum average quality to keep after triming [20]'
  type: boolean?
  inputBinding:
    prefix: --minqual
- id: in_km_er
  doc: '[optional] the kmer lenght for indexing [8]'
  type: boolean?
  inputBinding:
    prefix: --kmer
- id: in_mismatch
  doc: '[optional] the maxmum mismatch for primer seq [3]'
  type: boolean?
  inputBinding:
    prefix: --mismatch
- id: in_one_dot_three_dot_three
  doc: 'Options:'
  type: double
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- ptrimmer
