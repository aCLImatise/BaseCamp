#!/usr/bin/env cwl-runner

baseCommand:
- metagenomics
class: CommandLineTool
cwlVersion: v1.0
id: metagenomics
inputs:
- doc: 'Launch NTHREADS parallel search threads - default: 1 (default: 1)'
  id: threads
  inputBinding:
    prefix: --threads
  type: string
- doc: 'Choose format (default: fastq)'
  id: format
  inputBinding:
    prefix: --format
  type: string
- doc: 'It searches for at most <int> distinct, primary assignments for each read
    or pair.Default=5 (default: 1)'
  id: num_primary_assign
  inputBinding:
    prefix: --num_primary_assign
  type: string
- doc: 'The basename of the index for the reference genomes (default: None)'
  id: index
  inputBinding:
    prefix: --index
  type: string
- doc: 'Choose read type, skip if using Trinity assembles reads (default: paired)'
  id: read_type
  inputBinding:
    prefix: --read_type
  type: string
- doc: 'Right_fq (only when fastq format is used for read_type paired) (default: None)'
  id: right_fq
  inputBinding:
    prefix: --right_fq
  type: string
- doc: 'Left_fq (only when fastq format is used for read_type paired) (default: None)'
  id: left_fq
  inputBinding:
    prefix: --left_fq
  type: string
- doc: 'Comma-separated list of files containing unpaired reads to be aligned (for
    Trinity runs and single end reads) (default: None)'
  id: unpaired_reads
  inputBinding:
    prefix: --unpaired_reads
  type: string
