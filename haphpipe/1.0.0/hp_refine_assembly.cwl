#!/usr/bin/env cwl-runner

baseCommand:
- hp_refine_assembly
class: CommandLineTool
cwlVersion: v1.0
id: hp_refine_assembly
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
- doc: Assembly to refine
  id: ref_fa
  inputBinding:
    prefix: --ref_fa
  type: string
- doc: 'Output directory (default: .)'
  id: outdir
  inputBinding:
    prefix: --outdir
  type: string
- doc: 'Maximum number of refinement steps (default: 1)'
  id: max_step
  inputBinding:
    prefix: --max_step
  type: long
- doc: Use a subsample of reads for refinement.
  id: subsample
  inputBinding:
    prefix: --subsample
  type: string
- doc: Seed for random number generator (ignored if not subsampling).
  id: seed
  inputBinding:
    prefix: --seed
  type: string
- doc: 'Sample ID. Used as read group ID in BAM (default: sampleXX)'
  id: sample_id
  inputBinding:
    prefix: --sample_id
  type: string
- doc: 'Number of CPUs to use (default: 1)'
  id: n_cpu
  inputBinding:
    prefix: --ncpu
  type: string
- doc: 'Maximum heap size for Java VM, in GB. (default: 32)'
  id: x_mx
  inputBinding:
    prefix: --xmx
  type: string
- doc: 'Do not delete temporary directory (default: False)'
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
