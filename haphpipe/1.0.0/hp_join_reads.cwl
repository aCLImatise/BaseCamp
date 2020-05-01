#!/usr/bin/env cwl-runner

baseCommand:
- hp_join_reads
class: CommandLineTool
cwlVersion: v1.0
id: hp_join_reads
inputs:
- doc: Fastq file with read 1
  id: fq1
  inputBinding:
    prefix: --fq1
  type: string
- doc: Fastq file with read 1
  id: fq2
  inputBinding:
    prefix: --fq2
  type: string
- doc: Output directory
  id: outdir
  inputBinding:
    prefix: --outdir
  type: string
- doc: 'The minimum required overlap length between two reads to provide a confident
    overlap. (default: 10)'
  id: min_overlap
  inputBinding:
    prefix: --min_overlap
  type: long
- doc: Maximum overlap length expected in approximately 90 pct of read pairs, longer
    overlaps are penalized.
  id: max_overlap
  inputBinding:
    prefix: --max_overlap
  type: long
- doc: 'Also try combining read pairs in the "outie" orientation (default: False)'
  id: allow_out_ies
  inputBinding:
    prefix: --allow_outies
  type: boolean
- doc: Quality score encoding
  id: encoding
  inputBinding:
    prefix: --encoding
  type: string
- doc: Number of CPU to use
  id: n_cpu
  inputBinding:
    prefix: --ncpu
  type: string
- doc: 'Keep temporary directory (default: False)'
  id: keep_tmp
  inputBinding:
    prefix: --keep_tmp
  type: boolean
- doc: 'Do not write output to console (silence stdout and stderr) (default: False)'
  id: quiet
  inputBinding:
    prefix: --quiet
  type: boolean
- doc: Append console output to this file
  id: log_file
  inputBinding:
    prefix: --logfile
  type: string
- doc: 'Print commands but do not run (default: False)'
  id: debug
  inputBinding:
    prefix: --debug
  type: boolean
