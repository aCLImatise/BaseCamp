#!/usr/bin/env cwl-runner

baseCommand:
- clusterBed
class: CommandLineTool
cwlVersion: v1.0
id: clusterbed
inputs:
- doc: Force strandedness.  That is, only merge features that are the same strand.
    - By default, merging is done without respect to strand.
  id: s
  inputBinding:
    prefix: -s
  type: boolean
- doc: Maximum distance between features allowed for features to be merged. - Def.
    0. That is, overlapping & book-ended features are merged. - (INTEGER)
  id: d
  inputBinding:
    prefix: -d
  type: boolean
