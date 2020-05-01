#!/usr/bin/env cwl-runner

baseCommand:
- hp_sample_reads
class: CommandLineTool
cwlVersion: v1.0
id: hp_sample_reads
inputs:
- doc: Fastq file with read 1
  id: fq1
  inputBinding:
    prefix: --fq1
  type: string
- doc: Fastq file with read 2
  id: fq2
  inputBinding:
    prefix: --fq2
  type: string
- doc: Fastq file with unpaired reads
  id: f_qu
  inputBinding:
    prefix: --fqU
  type: string
- doc: 'Output directory (default: .)'
  id: outdir
  inputBinding:
    prefix: --outdir
  type: string
- doc: Number of reads to sample. If greater than the number of reads in file, all
    reads will be sampled.
  id: n_reads
  inputBinding:
    prefix: --nreads
  type: string
- doc: Fraction of reads to sample, between 0 and 1. Each read has [frac] probability
    of being sampled, so number of sampled reads is not precisely [frac * num_reads].
  id: frac
  inputBinding:
    prefix: --frac
  type: string
- doc: Seed for random number generator.
  id: seed
  inputBinding:
    prefix: --seed
  type: string
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
