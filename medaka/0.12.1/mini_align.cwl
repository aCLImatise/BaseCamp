#!/usr/bin/env cwl-runner

baseCommand:
- mini_align
class: CommandLineTool
cwlVersion: v1.0
id: mini_align
inputs:
- doc: reference, should be a fasta file. If correspondng minimap indices do not exist
    they will be created. (required).
  id: r
  inputBinding:
    prefix: -r
  type: boolean
- doc: fastq/a input reads (required).
  id: i
  inputBinding:
    prefix: -i
  type: boolean
- doc: 'split index every ~NUM input bases (default: 16G, this is larger than the
    usual minimap2 default).'
  id: i
  inputBinding:
    prefix: -I
  type: boolean
- doc: force recreation of index file.
  id: f
  inputBinding:
    prefix: -f
  type: boolean
- doc: aggressively extend gaps (sets -A1 -B2 -O2 -E1 for minimap2).
  id: a
  inputBinding:
    prefix: -a
  type: boolean
- doc: 'filter to only primary alignments (i.e. run samtools view -F 2308). Deprecated:
    this filter is now default and can be disabled with -A.'
  id: p
  inputBinding:
    prefix: -P
  type: boolean
- doc: do not filter alignments to primary alignments, output all.
  id: a
  inputBinding:
    prefix: -A
  type: boolean
- doc: sort bam by read name.
  id: n
  inputBinding:
    prefix: -n
  type: boolean
- doc: chunk size. Input reads/contigs will be broken into chunks prior to alignment.
  id: c
  inputBinding:
    prefix: -c
  type: boolean
- doc: 'alignment threads (default: 1).'
  id: t
  inputBinding:
    prefix: -t
  type: boolean
- doc: 'output file prefix (default: reads).'
  id: p
  inputBinding:
    prefix: -p
  type: boolean
- doc: fill MD tag.
  id: m
  inputBinding:
    prefix: -m
  type: boolean
- doc: fill cs(=long) tag.
  id: s
  inputBinding:
    prefix: -s
  type: boolean
- doc: only create reference index files.
  id: x
  inputBinding:
    prefix: -X
  type: boolean
- doc: log all commands before running.
  id: x
  inputBinding:
    prefix: -x
  type: boolean
