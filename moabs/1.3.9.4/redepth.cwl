class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/redepth.pl.cwl
inputs:
- id: str_input_name
  doc: '<str>   input BAM file name. '
  type: boolean
  inputBinding:
    prefix: -i
- id: str_output_bam
  doc: <str>   output BAM file name.
  type: boolean
  inputBinding:
    prefix: -o
- id: str_cnv_region
  doc: <str>   CNV region file name. It's a 4 column plain text file with colum 1-4
    as chrom, start, end, copy number prediction.
  type: boolean
  inputBinding:
    prefix: -b
- id: str_bam_file
  doc: "<str>   if your bam file RNAME has mate information '/1' or '/2', set it to\
    \ 1. Otherwise 0. Default 1 for BSMAP alignment. "
  type: boolean
  inputBinding:
    prefix: -m
- id: boleen_verbose_output
  doc: '<boleen>        verbose output  [0 or 1, default 0] '
  type: boolean
  inputBinding:
    prefix: -v
outputs: []
cwlVersion: v1.1
baseCommand:
- redepth.pl
