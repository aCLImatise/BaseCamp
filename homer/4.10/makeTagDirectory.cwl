#!/usr/bin/env cwl-runner

baseCommand:
- makeTagDirectory
class: CommandLineTool
cwlVersion: v1.0
id: maketagdirectory
inputs:
- doc: '(5th column of BED file contains # of reads mapping to position)'
  id: force_5th
  inputBinding:
    prefix: -force5th
  type: boolean
- doc: '(keep if there is a single best alignment based on mapq) -mapq <#> (Minimum
    mapq for -unique, default: 10, set negative to use AS:i:/XS:i:)'
  id: unique
  inputBinding:
    prefix: -unique
  type: boolean
- doc: (keep one of the best alignments even if others exist)
  id: keep_one
  inputBinding:
    prefix: -keepOne
  type: boolean
- doc: (include all alignments in SAM file)
  id: keep_all
  inputBinding:
    prefix: -keepAll
  type: boolean
- doc: '(Maximum allowed mismatches, default: no limit, uses MD:Z: tag)'
  id: mis
  inputBinding:
    prefix: -mis
  type: boolean
- doc: (strand specific, paired-end reads[flips strand of 2nd read to match])
  id: sspe
  inputBinding:
    prefix: -sspe
  type: boolean
- doc: /-read2 (only analyze 1st or 2nd read for PE sequencing)
  id: read_1
  inputBinding:
    prefix: -read1
  type: boolean
- doc: '<#> (minimum number of reads to report mC/C ratios, default: 10)'
  id: min_counts
  inputBinding:
    prefix: -minCounts
  type: boolean
- doc: "<CG|CHG|CHH|all> (only use C's in this context, default: CG)"
  id: mc_context
  inputBinding:
    prefix: -mCcontext
  type: boolean
- doc: <offset> <keep|remove> (filter reads based on oligo sequence in the genome)
  id: filter_reads
  inputBinding:
    prefix: -filterReads
  type: string
