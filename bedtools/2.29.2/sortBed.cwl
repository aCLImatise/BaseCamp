#!/usr/bin/env cwl-runner

baseCommand:
- sortBed
class: CommandLineTool
cwlVersion: v1.0
id: sortbed
inputs:
- doc: Sort by feature size in ascending order.
  id: size_a
  inputBinding:
    prefix: -sizeA
  type: boolean
- doc: Sort by feature size in descending order.
  id: sized
  inputBinding:
    prefix: -sizeD
  type: boolean
- doc: Sort by chrom (asc), then feature size (asc).
  id: chr_then_size_a
  inputBinding:
    prefix: -chrThenSizeA
  type: boolean
- doc: Sort by chrom (asc), then feature size (desc).
  id: chr_then_sized
  inputBinding:
    prefix: -chrThenSizeD
  type: boolean
- doc: Sort by chrom (asc), then score (asc).
  id: chr_then_score_a
  inputBinding:
    prefix: -chrThenScoreA
  type: boolean
- doc: Sort by chrom (asc), then score (desc).
  id: chr_then_scored
  inputBinding:
    prefix: -chrThenScoreD
  type: boolean
- doc: (names.txt)  Sort according to the chromosomes declared in "genome.txt"
  id: g
  inputBinding:
    prefix: -g
  type: boolean
- doc: (names.txt)      Sort according to the chromosomes declared in "names.txt"
  id: fa_idx
  inputBinding:
    prefix: -faidx
  type: boolean
- doc: the header from the A file prior to results.
  id: header
  inputBinding:
    prefix: -header
  type: string
