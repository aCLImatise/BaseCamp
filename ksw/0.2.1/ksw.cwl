#!/usr/bin/env cwl-runner

baseCommand:
- ksw
class: CommandLineTool
cwlVersion: v1.0
id: ksw
inputs:
- doc: 'The alignment mode: 0 - local, 1 - glocal, 2 - extend, 3 - global [0 - local]'
  id: m
  inputBinding:
    prefix: -M
  type: long
- doc: The match score (>0) [1]
  id: a
  inputBinding:
    prefix: -a
  type: long
- doc: The mismatch penalty (>0) [3]
  id: b
  inputBinding:
    prefix: -b
  type: long
- doc: The gap open penalty (>=0) [5]
  id: q
  inputBinding:
    prefix: -q
  type: long
- doc: The gap extend penalty (>0) [2]
  id: r
  inputBinding:
    prefix: -r
  type: long
- doc: The band width (ksw only) [536870911]
  id: w
  inputBinding:
    prefix: -w
  type: long
- doc: Path to the scoring matrix (4x4 or 5x5) [None]
  id: m
  inputBinding:
    prefix: -m
  type: File
- doc: Append the cigar to the output [false]
  id: c
  inputBinding:
    prefix: -c
  type: boolean
- doc: Append the query and target to the output [false]
  id: s
  inputBinding:
    prefix: -s
  type: boolean
- doc: Add a header line to the output [false]
  id: h
  inputBinding:
    prefix: -H
  type: boolean
- doc: Right-align gaps (ksw only)[false]
  id: r
  inputBinding:
    prefix: -R
  type: boolean
- doc: Output offset-and-length, otherwise start-and-end (all zero-based)[false]
  id: o
  inputBinding:
    prefix: -O
  type: boolean
- doc: 'The library type: 0 - auto, 1 - ksw2, 2 - parasail [0 - auto]'
  id: l
  inputBinding:
    prefix: -l
  type: long
