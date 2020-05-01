#!/usr/bin/env cwl-runner

baseCommand:
- ltr_finder
class: CommandLineTool
cwlVersion: v1.0
id: ltr_finder
inputs:
- doc: gap open penalty, default is 3
  id: o
  inputBinding:
    prefix: -o
  type: string
- doc: gap extension penalty, default is 1
  id: t
  inputBinding:
    prefix: -t
  type: string
- doc: gap end penalty, default is 1
  id: e
  inputBinding:
    prefix: -e
  type: string
- doc: match score, default is 2
  id: m
  inputBinding:
    prefix: -m
  type: string
- doc: unmatch score, default is -2
  id: u
  inputBinding:
    prefix: -u
  type: string
- doc: Max distance between 5'&3'LTR, default is 20000
  id: d
  inputBinding:
    prefix: -D
  type: string
- doc: Min distance between 5'&3'LTR, default is 1000
  id: d
  inputBinding:
    prefix: -d
  type: string
- doc: Max length of 5'&3'LTR, default is 3500
  id: l
  inputBinding:
    prefix: -L
  type: string
- doc: Min length of 5'&3'LTR, default is 100
  id: l
  inputBinding:
    prefix: -l
  type: string
- doc: min length of exact match pair, default is 20
  id: p
  inputBinding:
    prefix: -p
  type: string
- doc: Max gap between joined pairs, default is 50
  id: g
  inputBinding:
    prefix: -g
  type: string
- doc: Max gap between RT sub-domains, default is 2
  id: g
  inputBinding:
    prefix: -G
  type: string
- doc: Min sub-domains found in a RT domain, default is 4
  id: t
  inputBinding:
    prefix: -T
  type: string
- doc: Threshold for join new sequence in existed alignment new alignment similarity
    higher than this will be joined, default is 0.70
  id: j
  inputBinding:
    prefix: -j
  type: string
- doc: Threshold for split existed alignment to two part new alignment similarity
    lower than this will be split, set this threshold lower than -j, means turn it
    off, default is 0.90
  id: j
  inputBinding:
    prefix: -J
  type: string
- doc: output Score limit, default is 6.00, [0,10]
  id: s
  inputBinding:
    prefix: -S
  type: string
- doc: min LTR similarity threshold, default is 0.00, [0,1]
  id: m
  inputBinding:
    prefix: -M
  type: string
- doc: Boundary alignment sharpness threshold, higher one. one of the two edge's sharpness
    must higher than this threshold, default is 0.400, [0,1]
  id: b
  inputBinding:
    prefix: -B
  type: string
- doc: Boundary alignment sharpness threshold, lower one. both of the two edge's sharpness
    must higher than this threshold, default is 0.400, [0,1]
  id: b
  inputBinding:
    prefix: -b
  type: string
- doc: 'PBS detecting threshold, min tRNA match length: 14, [1,18]'
  id: r
  inputBinding:
    prefix: -r
  type: string
- doc: 'output format: [0]-full, 1-summary, 2-table.'
  id: w
  inputBinding:
    prefix: -w
  type: string
- doc: output alignment length(only affect -w0), default is 40
  id: o
  inputBinding:
    prefix: -O
  type: string
- doc: SeqIDs, will only calculate matched SeqID POSIX style regular express is supported.
  id: p
  inputBinding:
    prefix: -P
  type: string
- doc: tRNA sequence file(FASTA format)
  id: s
  inputBinding:
    prefix: -s
  type: File
- doc: data file used to draw figure
  id: f
  inputBinding:
    prefix: -f
  type: File
- doc: Use ps_scan to predict protein domain
  id: a
  inputBinding:
    prefix: -a
  type: string
- doc: Output in html format
  id: x
  inputBinding:
    prefix: -x
  type: boolean
- doc: LTR must have edge signal (at least two of PBS,PPT,TSR)
  id: e
  inputBinding:
    prefix: -E
  type: boolean
- doc: detect Centriole, delete highly repeat regions
  id: c
  inputBinding:
    prefix: -C
  type: boolean
- doc: 01string      Filter to choose desired result,default is 0 10000000000 5'-LTR
    must have TG 01000000000 5'-LTR must have CA 00100000000 3'-LTR must have TG 00010000000
    3'-LTR must have CA 00001000000 TSR must be found 00000100000 PBS must be found
    00000010000 PPT must be found 00000001000 RT domain muse be found 00000000100
    Integrase core must be found 00000000010 Integrase c-term must be found 00000000001
    RNase H must be found
  id: f
  inputBinding:
    prefix: -F
  type: boolean
