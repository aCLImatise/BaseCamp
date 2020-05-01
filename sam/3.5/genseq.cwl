#!/usr/bin/env cwl-runner

baseCommand:
- genseq
class: CommandLineTool
cwlVersion: v1.0
id: genseq
inputs:
- doc: number of sequences to generate
  id: n_seq
  inputBinding:
    prefix: -Nseq
  type: long
- doc: <protein|RNA|DNA|EHL2...>  alphabet for sequences
  id: a
  inputBinding:
    prefix: -a
  type: boolean
- doc: Ave(log length) (  5.415100)
  id: mean_log_len
  inputBinding:
    prefix: -meanloglen
  type: boolean
- doc: Std Dev (log length) (  1.036326)
  id: sd_log_len
  inputBinding:
    prefix: -sdloglen
  type: boolean
