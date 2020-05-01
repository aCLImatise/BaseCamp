#!/usr/bin/env cwl-runner

baseCommand:
- hp_assemble_denovo
class: CommandLineTool
cwlVersion: v1.0
id: hp_assemble_denovo
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
- doc: 'Do not perform error correction [spades only] (default: False)'
  id: no_error_correction
  inputBinding:
    prefix: --no_error_correction
  type: boolean
- doc: Use a subsample of reads for assembly.
  id: subsample
  inputBinding:
    prefix: --subsample
  type: string
- doc: Seed for random number generator (ignored if not subsampling).
  id: seed
  inputBinding:
    prefix: --seed
  type: string
- doc: 'Number of CPU to use (default: 1)'
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
