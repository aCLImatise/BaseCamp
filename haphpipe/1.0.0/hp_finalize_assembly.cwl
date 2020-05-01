#!/usr/bin/env cwl-runner

baseCommand:
- hp_finalize_assembly
class: CommandLineTool
cwlVersion: v1.0
id: hp_finalize_assembly
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
- doc: Consensus fasta file
  id: ref_fa
  inputBinding:
    prefix: --ref_fa
  type: string
- doc: 'Output directory (default: .)'
  id: outdir
  inputBinding:
    prefix: --outdir
  type: string
- doc: 'Bowtie2 preset to use (default: very-sensitive)'
  id: bt2_preset
  inputBinding:
    prefix: --bt2_preset
  type: string
- doc: 'Sample ID (default: sampleXX)'
  id: sample_id
  inputBinding:
    prefix: --sample_id
  type: string
- doc: Number of CPU to use
  id: n_cpu
  inputBinding:
    prefix: --ncpu
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
