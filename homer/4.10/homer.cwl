#!/usr/bin/env cwl-runner

baseCommand:
- homer
class: CommandLineTool
cwlVersion: v1.0
id: homer
inputs:
- doc: ': Sequence type (-dna)'
  id: prot
  inputBinding:
    prefix: -prot
  type: boolean
- doc: ': Sequence File'
  id: s
  inputBinding:
    prefix: -s
  type: File
- doc: ': Group/Stat File'
  id: g
  inputBinding:
    prefix: -g
  type: File
- doc: ': Mer File'
  id: mer
  inputBinding:
    prefix: -mer
  type: File
- doc: ': PSSM Motif File'
  id: m
  inputBinding:
    prefix: -m
  type: File
- doc: ': output file prefix'
  id: o
  inputBinding:
    prefix: -o
  type: File
- doc: ': seed file'
  id: seed
  inputBinding:
    prefix: -seed
  type: File
- doc: '<#> : offset of sequence from TSS (-2000)'
  id: offset
  inputBinding:
    prefix: -offset
  type: boolean
- doc: ": filtering cutoff for ratio of N's in sequence (0.9)"
  id: n
  inputBinding:
    prefix: -N
  type: double
- doc: '<#> : filter sequences shorter than #'
  id: seq_less
  inputBinding:
    prefix: -seqless
  type: boolean
- doc: '<#> : filter sequences longer than #'
  id: seq_more
  inputBinding:
    prefix: -seqmore
  type: boolean
