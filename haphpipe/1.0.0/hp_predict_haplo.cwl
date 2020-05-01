#!/usr/bin/env cwl-runner

baseCommand:
- hp_predict_haplo
class: CommandLineTool
cwlVersion: v1.0
id: hp_predict_haplo
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
- doc: Reference sequence used to align reads (fasta)
  id: ref_fa
  inputBinding:
    prefix: --ref_fa
  type: string
- doc: 'File with regions to perform haplotype reconstruction. Regions should be specified
    using the samtools region specification format: RNAME[:STARTPOS[-ENDPOS]]'
  id: region_txt
  inputBinding:
    prefix: --region_txt
  type: string
- doc: 'Output directory (default: .)'
  id: outdir
  inputBinding:
    prefix: --outdir
  type: string
- doc: 'Minimum readlength passed to PredictHaplo (default: 36)'
  id: min_read_length
  inputBinding:
    prefix: --min_readlength
  type: long
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
