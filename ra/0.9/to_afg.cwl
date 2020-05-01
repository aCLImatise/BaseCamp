#!/usr/bin/env cwl-runner

baseCommand:
- to_afg
class: CommandLineTool
cwlVersion: v1.0
id: to_afg
inputs:
- doc: (required) input fasta/fastq reads file
  id: reads
  inputBinding:
    prefix: --reads
  type: File
- doc: 'default: fasta format format of input reads file'
  id: fast_q
  inputBinding:
    prefix: --fastq
  type: boolean
- doc: output afg reads file
  id: out
  inputBinding:
    prefix: --out
  type: File
