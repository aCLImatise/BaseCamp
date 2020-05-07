class: CommandLineTool
id: ptrimmer.cwl
inputs:
- id: p_trimmer
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: keep
  doc: "keep the complete reads if can't locate primer sequence [default: discard\
    \ the reads]"
  type: boolean
  inputBinding:
    prefix: --keep
- id: seqtype
  doc: '[required] the sequencing type [single|pair]'
  type: boolean
  inputBinding:
    prefix: --seqtype
- id: amp_file
  doc: '[required] input amplicon file [.txt]'
  type: boolean
  inputBinding:
    prefix: --ampfile
- id: read_1
  doc: '[required] read1(forward) for fastq file [.fq|.gz]'
  type: boolean
  inputBinding:
    prefix: --read1
- id: read_2
  doc: '[optional] read2(reverse) for paired-end seqtype [.fq|.gz]'
  type: boolean
  inputBinding:
    prefix: --read2
- id: outdir
  doc: '[required] output directory for trimed fastq file [dir]'
  type: boolean
  inputBinding:
    prefix: --outdir
- id: min_qual
  doc: '[optional] the minimum average quality to keep after triming [20]'
  type: boolean
  inputBinding:
    prefix: --minqual
- id: km_er
  doc: '[optional] the kmer lenght for indexing [8]'
  type: boolean
  inputBinding:
    prefix: --kmer
- id: mismatch
  doc: '[optional] the maxmum mismatch for primer seq [3]'
  type: boolean
  inputBinding:
    prefix: --mismatch
outputs: []
cwlVersion: v1.1
baseCommand:
- ptrimmer
