#!/usr/bin/env cwl-runner

baseCommand:
- mapMers-depth
class: CommandLineTool
cwlVersion: v1.0
id: mapmers-depth
inputs:
- doc: "- report the count (c) of the single kmer that starts at position (p). Format:\
    \ 's p c'"
  id: count
  inputBinding:
    prefix: -count
  type: boolean
- doc: "- report the number (n) of kmers that span position (p).  Format: 's p n'"
  id: depth
  inputBinding:
    prefix: -depth
  type: boolean
- doc: "- report the min (m), max (M), ave (a) count of all mers that span position\
    \ (p).  Format: 's p m M a t n' (also reports total count (t) and number of kmers\
    \ (n))"
  id: stats
  inputBinding:
    prefix: -stats
  type: boolean
