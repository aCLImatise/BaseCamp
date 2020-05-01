#!/usr/bin/env cwl-runner

baseCommand:
- soapsplice
class: CommandLineTool
cwlVersion: v1.0
id: soapsplice
inputs:
- doc: ''
  id: options
  inputBinding:
    position: 0
  type: string
- doc: '* Prefix of output files, (can be with file directory)'
  id: o
  inputBinding:
    prefix: -o
  type: File
- doc: Number of threads, <= 20, 1 (default)
  id: p
  inputBinding:
    prefix: -p
  type: long
- doc: '1: Forward, 2: Reverse, 3: Both (default)'
  id: s
  inputBinding:
    prefix: -S
  type: long
- doc: Maximum mismatch for one-segment alignment, <= 5, 3 (default)
  id: m
  inputBinding:
    prefix: -m
  type: long
- doc: Maximum indel for one-segment alignment, <= 2, 2 (default)
  id: g
  inputBinding:
    prefix: -g
  type: long
- doc: Length of tail that can be ignored in one-segment alignment, 7 (default)
  id: i
  inputBinding:
    prefix: -i
  type: long
- doc: Longest gap between two segments in two-segment alignment, 500000 (default)
  id: t
  inputBinding:
    prefix: -t
  type: long
- doc: Shortest length of a segment in two-segment alignment, 8 (default)
  id: a
  inputBinding:
    prefix: -a
  type: long
- doc: "1: Output read and its quality in one-segment alignment output file (default)\
    \ 0: Don't output such information to save disk space"
  id: c
  inputBinding:
    prefix: -c
  type: long
- doc: 'Format of output files, 0: original (default), 1: SOAP, 2: SAM'
  id: f
  inputBinding:
    prefix: -f
  type: long
- doc: Set the MAPQ (mapping quality) field to this value, just valid in SAM format,
    255 (default)
  id: s
  inputBinding:
    prefix: -s
  type: long
- doc: 'Input quality type in FASTQ file 0: quality = Phred + 64, used in Illumina/Solexa
    format, (default) 1: quality = Phred + 33, used in Sanger format'
  id: q
  inputBinding:
    prefix: -q
  type: long
- doc: The maximum distance between paired-end reads, 500000 (default)
  id: l
  inputBinding:
    prefix: -L
  type: long
- doc: The minimum distance between paired-end reads, 50 (default)
  id: l
  inputBinding:
    prefix: -l
  type: long
- doc: The insert length of paired-end reads
  id: i
  inputBinding:
    prefix: -I
  type: long
- doc: "1: Output junction information (default) 0: Don't output junction information"
  id: j
  inputBinding:
    prefix: -j
  type: long
