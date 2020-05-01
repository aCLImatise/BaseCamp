#!/usr/bin/env cwl-runner

baseCommand:
- parallel_all_against_all_blastp
class: CommandLineTool
cwlVersion: v1.0
id: parallel_all_against_all_blastp
inputs:
- doc: ''
  id: file_faa
  inputBinding:
    position: 0
  type: File
- doc: number of threads [1]
  id: p
  inputBinding:
    prefix: -p
  type: long
- doc: output filename for blast results [blast_results]
  id: o
  inputBinding:
    prefix: -o
  type: string
- doc: makeblastdb executable [makeblastdb]
  id: m
  inputBinding:
    prefix: -m
  type: string
- doc: blastp executable [blastp]
  id: b
  inputBinding:
    prefix: -b
  type: string
- doc: verbose output to STDOUT
  id: v
  inputBinding:
    prefix: -v
  type: boolean
