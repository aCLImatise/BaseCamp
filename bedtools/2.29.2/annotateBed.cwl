#!/usr/bin/env cwl-runner

baseCommand:
- annotateBed
class: CommandLineTool
cwlVersion: v1.0
id: annotatebed
inputs:
- doc: A list of names (one / file) to describe each file in -i. These names will
    be printed as a header line.
  id: names
  inputBinding:
    prefix: -names
  type: boolean
- doc: the count of features in each file that overlap -i.
  id: counts
  inputBinding:
    prefix: -counts
  type: string
- doc: to report the fraction of -i covered by each file.
  id: default
  inputBinding:
    prefix: '- Default'
  type: string
- doc: Report the counts followed by the % coverage. - Default is to report the fraction
    of -i covered by each file.
  id: both
  inputBinding:
    prefix: -both
  type: boolean
- doc: Require same strandedness.  That is, only counts overlaps on the _same_ strand.
    - By default, overlaps are counted without respect to strand.
  id: s
  inputBinding:
    prefix: -s
  type: boolean
- doc: Require different strandedness.  That is, only count overlaps on the _opposite_
    strand. - By default, overlaps are counted without respect to strand.
  id: s
  inputBinding:
    prefix: -S
  type: boolean
