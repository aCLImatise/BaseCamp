#!/usr/bin/env cwl-runner

baseCommand:
- fasta_stats
class: CommandLineTool
cwlVersion: v1.0
id: fasta_stats
inputs:
- doc: '##   size of big scaffold cutoff in kb [50]'
  id: b
  inputBinding:
    prefix: -b
  type: boolean
- doc: '##   minimum size bin to display for gaps [none]'
  id: g
  inputBinding:
    prefix: -g
  type: boolean
- doc: '##   minimum size bin to display [1000]'
  id: l
  inputBinding:
    prefix: -l
  type: boolean
- doc: "##   exact length of N's to signal scaffold end [-1]"
  id: n
  inputBinding:
    prefix: -N
  type: boolean
- doc: "##   minimum length of N's to signal contig end [9]"
  id: n
  inputBinding:
    prefix: -n
  type: boolean
