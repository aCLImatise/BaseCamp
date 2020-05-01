#!/usr/bin/env cwl-runner

baseCommand:
- teloclip-extract
class: CommandLineTool
cwlVersion: v1.0
id: teloclip-extract
inputs:
- doc: Path to fai index for reference fasta. Index fasta using `samtools faidx FASTA`
  id: ref_idx
  inputBinding:
    prefix: --refIdx
  type: string
- doc: 'Use this prefix for output files. Default: None.'
  id: prefix
  inputBinding:
    prefix: --prefix
  type: string
- doc: If set, write overhang reads to fasta by contig.
  id: extract_reads
  inputBinding:
    prefix: --extractReads
  type: boolean
- doc: 'Write extracted reads to this directory. Default: cwd.'
  id: extract_dir
  inputBinding:
    prefix: --extractDir
  type: string
- doc: Require clip to extend past ref contig end by at least N bases.
  id: min_clip
  inputBinding:
    prefix: --minClip
  type: long
- doc: Tolerate max N unaligned bases at contig ends.
  id: max_break
  inputBinding:
    prefix: --maxBreak
  type: long
