#!/usr/bin/env cwl-runner

baseCommand:
- cmasker
class: CommandLineTool
cwlVersion: v1.0
id: cmasker
inputs:
- doc: FASTA Input
  id: f
  inputBinding:
    prefix: -f
  type: boolean
- doc: Jellfish Database
  id: j
  inputBinding:
    prefix: -j
  type: boolean
- doc: Create OCC output
  id: o
  inputBinding:
    prefix: -o
  type: boolean
- doc: Normalize Value
  id: n
  inputBinding:
    prefix: -n
  type: boolean
- doc: RT Value for masking threshold
  id: r
  inputBinding:
    prefix: -r
  type: boolean
- doc: 'Strict mode: Mask the whole k-mer in the query sequence instead of the single
    nucleotide'
  id: t
  inputBinding:
    prefix: -t
  type: boolean
- doc: Prefix for the outfiles
  id: p
  inputBinding:
    prefix: -p
  type: boolean
- doc: Suppress FASTA output
  id: s
  inputBinding:
    prefix: -s
  type: boolean
