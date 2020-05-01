#!/usr/bin/env cwl-runner

baseCommand:
- redepth.pl
class: CommandLineTool
cwlVersion: v1.0
id: redepth.pl
inputs:
- doc: '<str>   input BAM file name. '
  id: i
  inputBinding:
    prefix: -i
  type: boolean
- doc: <str>   output BAM file name.
  id: o
  inputBinding:
    prefix: -o
  type: boolean
- doc: <str>   CNV region file name. It's a 4 column plain text file with colum 1-4
    as chrom, start, end, copy number prediction.
  id: b
  inputBinding:
    prefix: -b
  type: boolean
- doc: "<str>   if your bam file RNAME has mate information '/1' or '/2', set it to\
    \ 1. Otherwise 0. Default 1 for BSMAP alignment. "
  id: m
  inputBinding:
    prefix: -m
  type: boolean
- doc: '<boleen>        verbose output  [0 or 1, default 0] '
  id: v
  inputBinding:
    prefix: -v
  type: boolean
