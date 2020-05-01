#!/usr/bin/env cwl-runner

baseCommand:
- LAshow
class: CommandLineTool
cwlVersion: v1.0
id: lashow
inputs:
- doc: ': Show a cartoon of the LA between reads.'
  id: c
  inputBinding:
    prefix: -c
  type: boolean
- doc: ': Show the alignment of each LA.'
  id: a
  inputBinding:
    prefix: -a
  type: boolean
- doc: ": Show the alignment of each LA with -w bp's of A in each row."
  id: r
  inputBinding:
    prefix: -r
  type: boolean
- doc: ': Show only proper overlaps.'
  id: o
  inputBinding:
    prefix: -o
  type: boolean
- doc: ': Switch the roles of A- and B-reads.'
  id: f
  inputBinding:
    prefix: -F
  type: boolean
- doc: ': Show alignments in upper case.'
  id: u
  inputBinding:
    prefix: -U
  type: boolean
- doc: ': Indent alignments and cartoons by -i.'
  id: i
  inputBinding:
    prefix: -i
  type: boolean
- doc: ': Width of each row of alignment in symbols (-a) or bps (-r).'
  id: w
  inputBinding:
    prefix: -w
  type: boolean
- doc: ': # of border bp.s to show on each side of LA.'
  id: b
  inputBinding:
    prefix: -b
  type: boolean
