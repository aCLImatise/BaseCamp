#!/usr/bin/env cwl-runner

baseCommand:
- bowtie-inspect
class: CommandLineTool
cwlVersion: v1.0
id: bowtie-inspect
inputs:
- doc: '/--across <int>  Number of characters across in FASTA output (default: 60)'
  id: a
  inputBinding:
    prefix: -a
  type: boolean
- doc: /--names         Print reference sequence names only
  id: n
  inputBinding:
    prefix: -n
  type: boolean
- doc: /--summary       Print summary incl. ref names, lengths, index properties
  id: s
  inputBinding:
    prefix: -s
  type: boolean
- doc: /--ebwt-ref      Reconstruct reference from ebwt (slow, preserves colors)
  id: e
  inputBinding:
    prefix: -e
  type: boolean
- doc: /--verbose       Verbose output (for debugging)
  id: v
  inputBinding:
    prefix: -v
  type: boolean
- doc: print this usage message
  id: help
  inputBinding:
    prefix: --help
  type: boolean
