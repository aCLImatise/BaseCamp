#!/usr/bin/env cwl-runner

baseCommand:
- deadzones
class: CommandLineTool
cwlVersion: v1.0
id: deadzones
inputs:
- doc: ''
  id: options
  inputBinding:
    position: 0
  type: string
- doc: ''
  id: 1_or_more_fast_a_chrom_files
  inputBinding:
    position: 1
  type: string
- doc: 'Name of output file (default: stdout) '
  id: output
  inputBinding:
    prefix: -output
  type: boolean
- doc: 'Width of k-mers '
  id: km_er
  inputBinding:
    prefix: -kmer
  type: boolean
- doc: 'prefix length '
  id: prefix
  inputBinding:
    prefix: -prefix
  type: boolean
- doc: 'get bisulfite deadzones '
  id: bisulfite
  inputBinding:
    prefix: -bisulfite
  type: boolean
- doc: 'A/G wildcard for bisulfite '
  id: ag_wild
  inputBinding:
    prefix: -ag-wild
  type: boolean
- doc: 'suffix of FASTA files (assumes -c indicates dir) '
  id: suffix
  inputBinding:
    prefix: -suffix
  type: boolean
- doc: 'print more run information '
  id: verbose
  inputBinding:
    prefix: -verbose
  type: boolean
- doc: 'print about message '
  id: about
  inputBinding:
    prefix: -about
  type: boolean
