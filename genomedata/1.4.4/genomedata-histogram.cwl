#!/usr/bin/env cwl-runner

baseCommand:
- genomedata-histogram
class: CommandLineTool
cwlVersion: v1.0
id: genomedata-histogram
inputs:
- doc: genomedata archive
  id: gd_archive
  inputBinding:
    position: 0
  type: string
- doc: track name
  id: track_name
  inputBinding:
    position: 1
  type: string
- doc: limit summary to genomic coordinates in FILE
  id: include_coords
  inputBinding:
    prefix: --include-coords
  type: File
- doc: use BINS bins
  id: num_bins
  inputBinding:
    prefix: --num-bins
  type: string
