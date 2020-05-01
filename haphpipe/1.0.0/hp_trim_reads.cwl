#!/usr/bin/env cwl-runner

baseCommand:
- hp_trim_reads
class: CommandLineTool
cwlVersion: v1.0
id: hp_trim_reads
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
- doc: Adapter file
  id: adapter_file
  inputBinding:
    prefix: --adapter_file
  type: string
- doc: "Trim commands for trimmomatic (default: ['LEADING:3', 'TRAILING:3', 'SLIDINGWINDOW:4:15',\
    \ 'MINLEN:36'])"
  id: trimmers
  inputBinding:
    prefix: --trimmers
  type: string
- doc: '{Phred+33,Phred+64} Quality score encoding'
  id: encoding
  inputBinding:
    prefix: --encoding
  type: boolean
- doc: 'Number of CPU to use (default: 1)'
  id: n_cpu
  inputBinding:
    prefix: --ncpu
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
