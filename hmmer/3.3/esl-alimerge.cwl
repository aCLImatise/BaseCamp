#!/usr/bin/env cwl-runner

baseCommand:
- esl-alimerge
class: CommandLineTool
cwlVersion: v1.0
id: esl-alimerge
inputs:
- doc: ': output the final alignment to file <f>, not stdout'
  id: o
  inputBinding:
    prefix: -o
  type: string
- doc: ': print info on merge to stdout; requires -o'
  id: v
  inputBinding:
    prefix: -v
  type: boolean
- doc: ': use minimal RAM (RAM usage will be independent of aln sizes)'
  id: small
  inputBinding:
    prefix: --small
  type: boolean
- doc: ': remove all columns that are gaps in GC RF annotation'
  id: rf_only
  inputBinding:
    prefix: --rfonly
  type: boolean
- doc: ': specify that output aln be format <s> (see choices above)'
  id: out_format
  inputBinding:
    prefix: --outformat
  type: string
- doc: ': alignments to merge are RNA alignments'
  id: rna
  inputBinding:
    prefix: --rna
  type: boolean
- doc: ': alignments to merge are DNA alignments'
  id: dna
  inputBinding:
    prefix: --dna
  type: boolean
- doc: ': alignments to merge are protein alignments'
  id: amino
  inputBinding:
    prefix: --amino
  type: boolean
