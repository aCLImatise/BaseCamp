#!/usr/bin/env cwl-runner

baseCommand:
- iterative_cdhit
class: CommandLineTool
cwlVersion: v1.0
id: iterative_cdhit
inputs:
- doc: input FASTA file of protein sequences [_combined_files]
  id: m
  inputBinding:
    prefix: -m
  type: string
- doc: number of threads [1]
  id: p
  inputBinding:
    prefix: -p
  type: long
- doc: number of isolates [1]
  id: n
  inputBinding:
    prefix: -n
  type: long
- doc: cd-hit output filename [_clustered]
  id: c
  inputBinding:
    prefix: -c
  type: string
- doc: output filename for filtered sequences [_clustered_filtered.fa]
  id: f
  inputBinding:
    prefix: -f
  type: string
- doc: lower bound percentage identity [98.0]
  id: l
  inputBinding:
    prefix: -l
  type: double
- doc: upper bound percentage identity [99.0]
  id: u
  inputBinding:
    prefix: -u
  type: double
- doc: step size for percentage identity [0.5]
  id: s
  inputBinding:
    prefix: -s
  type: double
- doc: verbose output to STDOUT
  id: v
  inputBinding:
    prefix: -v
  type: boolean
