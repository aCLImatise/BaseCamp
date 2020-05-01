#!/usr/bin/env cwl-runner

baseCommand:
- randomize_fastq
class: CommandLineTool
cwlVersion: v1.0
id: randomize_fastq
inputs:
- doc: "input and output files; give 1, 2 or 4 filenames: Given 'in.fq', read from\
    \ it and write to stdout. Given 'in.fq out.fq', read from in.fq and write to out.fq.\
    \ Given 'in1.fq in2.fq out1.fq out2.fq', work on read pairs and be careful with\
    \ file order (both input files first!)If the output file name ends with '.gz'\
    \ a gizzepd file is written."
  id: fast_q
  inputBinding:
    position: 0
  type: string
- doc: overwrite existing output file(s)
  id: force
  inputBinding:
    prefix: --force
  type: boolean
- doc: size of output buffer in bytes [128 MB]. Not used if writing gzipped files.
  id: buffer_size
  inputBinding:
    prefix: --buffersize
  type: string
