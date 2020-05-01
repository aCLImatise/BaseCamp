#!/usr/bin/env cwl-runner

baseCommand:
- illumiprocessor
class: CommandLineTool
cwlVersion: v1.0
id: illumiprocessor
inputs:
- doc: 'The input directory of raw reads to trim. (default: None)'
  id: input
  inputBinding:
    prefix: --input
  type: string
- doc: 'The output directory of clean reads to create. (default: None)'
  id: output
  inputBinding:
    prefix: --output
  type: string
- doc: 'A configuration file containing the tag:sample mapping and renaming options.
    (default: None)'
  id: config
  inputBinding:
    prefix: --config
  type: string
- doc: 'The path to the trimmomatic-0.XX.jar file. (default: /tmp/tmpk1sf2i_q/bin/trimmomatic)'
  id: trim_mo_matic
  inputBinding:
    prefix: --trimmomatic
  type: string
- doc: 'The minimum length of reads to keep. (default: 40)'
  id: min_len
  inputBinding:
    prefix: --min-len
  type: long
- doc: 'When trimming PE reads, do not merge singleton files. (default: False)'
  id: no_merge
  inputBinding:
    prefix: --no-merge
  type: boolean
- doc: 'Number of compute cores to use. (default: 1)'
  id: cores
  inputBinding:
    prefix: --cores
  type: string
- doc: 'An optional regex pattern to find R1 reads. (default: None)'
  id: r1_pattern
  inputBinding:
    prefix: --r1-pattern
  type: string
- doc: 'An optional regex pattern to find R2 reads. (default: None)'
  id: r2_pattern
  inputBinding:
    prefix: --r2-pattern
  type: string
- doc: 'Single-end reads. (default: False)'
  id: se
  inputBinding:
    prefix: --se
  type: boolean
- doc: 'The type of fastq encoding used. (default: phred33)'
  id: phred
  inputBinding:
    prefix: --phred
  type: string
- doc: 'The path to a directory to hold logs. (default: None)'
  id: log_path
  inputBinding:
    prefix: --log-path
  type: string
- doc: 'The logging level to use. (default: INFO)'
  id: verbosity
  inputBinding:
    prefix: --verbosity
  type: string
