class: CommandLineTool
id: ../../../makeTagDirectory.cwl
inputs:
- id: force_five_th
  doc: '(5th column of BED file contains # of reads mapping to position)'
  type: boolean
  inputBinding:
    prefix: -force5th
- id: unique
  doc: '(keep if there is a single best alignment based on mapq) -mapq <#> (Minimum
    mapq for -unique, default: 10, set negative to use AS:i:/XS:i:)'
  type: boolean
  inputBinding:
    prefix: -unique
- id: keep_one
  doc: (keep one of the best alignments even if others exist)
  type: boolean
  inputBinding:
    prefix: -keepOne
- id: keep_all
  doc: (include all alignments in SAM file)
  type: boolean
  inputBinding:
    prefix: -keepAll
- id: mis
  doc: '(Maximum allowed mismatches, default: no limit, uses MD:Z: tag)'
  type: boolean
  inputBinding:
    prefix: -mis
- id: sspe
  doc: (strand specific, paired-end reads[flips strand of 2nd read to match])
  type: boolean
  inputBinding:
    prefix: -sspe
- id: read_one_slash_read_two
  doc: (only analyze 1st or 2nd read for PE sequencing)
  type: boolean
  inputBinding:
    prefix: -read1/-read2
- id: rm_soft
  doc: '(clip soft clipped regions from reads, default: assume read extends/mismatch)'
  type: boolean
  inputBinding:
    prefix: -rmsoft
- id: omits_n
  doc: (ignore alignments with splicing/soft clipping, i.e. use for csRNA-seq)
  type: boolean
  inputBinding:
    prefix: -omitSN
- id: min_counts
  doc: '<#> (minimum number of reads to report mC/C ratios, default: 10)'
  type: boolean
  inputBinding:
    prefix: -minCounts
- id: mc_context
  doc: "(only use C's in this context, default: CG)"
  type: string
  inputBinding:
    prefix: -mCcontext
- id: filter_reads
  doc: <offset> <keep|remove> (filter reads based on oligo sequence in the genome)
  type: string
  inputBinding:
    prefix: -filterReads
- id: directory
  doc: ''
  type: Directory
  inputBinding:
    position: 0
- id: alignment_file_one
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: file
  doc: ''
  type: File
  inputBinding:
    position: 2
- id: two
  doc: ''
  type: string
  inputBinding:
    position: 3
outputs: []
cwlVersion: v1.1
baseCommand:
- makeTagDirectory
