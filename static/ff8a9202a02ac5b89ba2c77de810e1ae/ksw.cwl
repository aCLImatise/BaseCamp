class: CommandLineTool
id: ksw.cwl
inputs:
- id: m
  doc: 'The alignment mode: 0 - local, 1 - glocal, 2 - extend, 3 - global [0 - local]'
  type: long
  inputBinding:
    prefix: -M
- id: a
  doc: The match score (>0) [1]
  type: long
  inputBinding:
    prefix: -a
- id: b
  doc: The mismatch penalty (>0) [3]
  type: long
  inputBinding:
    prefix: -b
- id: q
  doc: The gap open penalty (>=0) [5]
  type: long
  inputBinding:
    prefix: -q
- id: r
  doc: The gap extend penalty (>0) [2]
  type: long
  inputBinding:
    prefix: -r
- id: w
  doc: The band width (ksw only) [536870911]
  type: long
  inputBinding:
    prefix: -w
- id: m
  doc: Path to the scoring matrix (4x4 or 5x5) [None]
  type: File
  inputBinding:
    prefix: -m
- id: c
  doc: Append the cigar to the output [false]
  type: boolean
  inputBinding:
    prefix: -c
- id: s
  doc: Append the query and target to the output [false]
  type: boolean
  inputBinding:
    prefix: -s
- id: h
  doc: Add a header line to the output [false]
  type: boolean
  inputBinding:
    prefix: -H
- id: r
  doc: Right-align gaps (ksw only)[false]
  type: boolean
  inputBinding:
    prefix: -R
- id: o
  doc: Output offset-and-length, otherwise start-and-end (all zero-based)[false]
  type: boolean
  inputBinding:
    prefix: -O
- id: l
  doc: 'The library type: 0 - auto, 1 - ksw2, 2 - parasail [0 - auto]'
  type: long
  inputBinding:
    prefix: -l
outputs: []
cwlVersion: v1.1
baseCommand:
- ksw
