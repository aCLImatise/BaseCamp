#!/usr/bin/env cwl-runner

baseCommand:
- ptrimmer
class: CommandLineTool
cwlVersion: v1.0
id: ptrimmer
inputs:
- doc: ''
  id: p_trimmer
  inputBinding:
    position: 0
  type: string
- doc: "keep the complete reads if can't locate primer sequence [default: discard\
    \ the reads]"
  id: keep
  inputBinding:
    prefix: --keep
  type: boolean
- doc: '[required] the sequencing type [single|pair]'
  id: seqtype
  inputBinding:
    prefix: --seqtype
  type: boolean
- doc: '[required] input amplicon file [.txt]'
  id: amp_file
  inputBinding:
    prefix: --ampfile
  type: boolean
- doc: '[required] read1(forward) for fastq file [.fq|.gz]'
  id: read_1
  inputBinding:
    prefix: --read1
  type: boolean
- doc: '[optional] read2(reverse) for paired-end seqtype [.fq|.gz]'
  id: read_2
  inputBinding:
    prefix: --read2
  type: boolean
- doc: '[required] output directory for trimed fastq file [dir]'
  id: outdir
  inputBinding:
    prefix: --outdir
  type: boolean
- doc: '[optional] the minimum average quality to keep after triming [20]'
  id: min_qual
  inputBinding:
    prefix: --minqual
  type: boolean
- doc: '[optional] the kmer lenght for indexing [8]'
  id: km_er
  inputBinding:
    prefix: --kmer
  type: boolean
- doc: '[optional] the maxmum mismatch for primer seq [3]'
  id: mismatch
  inputBinding:
    prefix: --mismatch
  type: boolean
