class: CommandLineTool
id: redepth.pl.cwl
inputs:
- id: i
  doc: '<str>   input BAM file name. '
  type: boolean
  inputBinding:
    prefix: -i
- id: o
  doc: <str>   output BAM file name.
  type: boolean
  inputBinding:
    prefix: -o
- id: b
  doc: <str>   CNV region file name. It's a 4 column plain text file with colum 1-4
    as chrom, start, end, copy number prediction.
  type: boolean
  inputBinding:
    prefix: -b
- id: m
  doc: "<str>   if your bam file RNAME has mate information '/1' or '/2', set it to\
    \ 1. Otherwise 0. Default 1 for BSMAP alignment. "
  type: boolean
  inputBinding:
    prefix: -m
- id: v
  doc: '<boleen>        verbose output  [0 or 1, default 0] '
  type: boolean
  inputBinding:
    prefix: -v
outputs: []
cwlVersion: v1.1
baseCommand:
- redepth.pl
