class: CommandLineTool
id: mapMers_depth.cwl
inputs:
- id: in_count
  doc: "- report the count (c) of the single kmer that starts at position (p).\nFormat:\
    \ 's p c'"
  type: boolean
  inputBinding:
    prefix: -count
- id: in_depth
  doc: "- report the number (n) of kmers that span position (p).  Format: 's p n'"
  type: boolean
  inputBinding:
    prefix: -depth
- id: in_stats
  doc: "- report the min (m), max (M), ave (a) count of all mers that span\nposition\
    \ (p).  Format: 's p m M a t n'\n(also reports total count (t) and number of kmers\
    \ (n))"
  type: boolean
  inputBinding:
    prefix: -stats
- id: in_seq
  doc: ''
  type: string
  inputBinding:
    prefix: -seq
- id: in_m
  doc: ''
  type: long
  inputBinding:
    prefix: -m
- id: in_mers
  doc: ''
  type: string
  inputBinding:
    prefix: -mers
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- mapMers-depth
