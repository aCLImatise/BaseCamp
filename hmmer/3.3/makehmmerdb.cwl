#!/usr/bin/env cwl-runner

baseCommand:
- makehmmerdb
class: CommandLineTool
cwlVersion: v1.0
id: makehmmerdb
inputs:
- doc: ': specify that input file is in format <s>'
  id: in_format
  inputBinding:
    prefix: --informat
  type: string
- doc: ': bin length (power of 2;  32<=b<=4096)  [256]'
  id: bin_length
  inputBinding:
    prefix: --bin_length
  type: string
- doc: ': suffix array sample rate (power of 2)  [8]'
  id: sa_freq
  inputBinding:
    prefix: --sa_freq
  type: string
- doc: ': input sequence broken into blocks this size (Mbases)  [50]'
  id: block_size
  inputBinding:
    prefix: --block_size
  type: string
