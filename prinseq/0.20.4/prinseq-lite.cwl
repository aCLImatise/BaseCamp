#!/usr/bin/env cwl-runner

baseCommand:
- prinseq-lite.pl
class: CommandLineTool
cwlVersion: v1.0
id: prinseq-lite.pl
inputs:
- doc: ''
  id: perl
  inputBinding:
    position: 0
  type: string
- doc: ''
  id: prin_seq_lite_pl
  inputBinding:
    position: 1
  type: string
- doc: ''
  id: input_fast_q_file
  inputBinding:
    position: 2
  type: string
- doc: ''
  id: help
  inputBinding:
    prefix: -help
  type: boolean
- doc: ''
  id: version
  inputBinding:
    prefix: -version
  type: boolean
- doc: ''
  id: man
  inputBinding:
    prefix: -man
  type: boolean
- doc: ''
  id: verbose
  inputBinding:
    prefix: -verbose
  type: boolean
- doc: ''
  id: fast_q
  inputBinding:
    prefix: -fastq
  type: boolean
- doc: ''
  id: fast_a
  inputBinding:
    prefix: -fasta
  type: string
- doc: ''
  id: fastq2
  inputBinding:
    prefix: -fastq2
  type: string
