class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/mapMers_depth.cwl
inputs:
- id: count
  doc: "- report the count (c) of the single kmer that starts at position (p). Format:\
    \ 's p c'"
  type: boolean
  inputBinding:
    prefix: -count
- id: depth
  doc: "- report the number (n) of kmers that span position (p).  Format: 's p n'"
  type: boolean
  inputBinding:
    prefix: -depth
- id: stats
  doc: "- report the min (m), max (M), ave (a) count of all mers that span position\
    \ (p).  Format: 's p m M a t n' (also reports total count (t) and number of kmers\
    \ (n))"
  type: boolean
  inputBinding:
    prefix: -stats
- id: mers
  doc: ''
  type: string
  inputBinding:
    prefix: -mers
- id: m
  doc: ''
  type: string
  inputBinding:
    prefix: -m
- id: seq
  doc: ''
  type: string
  inputBinding:
    prefix: -seq
outputs: []
cwlVersion: v1.1
baseCommand:
- mapMers-depth
