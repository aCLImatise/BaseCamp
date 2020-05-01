#!/usr/bin/env cwl-runner

baseCommand:
- NanoFilt
class: CommandLineTool
cwlVersion: v1.0
id: nanofilt
inputs:
- doc: input, uncompressed fastq file
  id: input
  inputBinding:
    position: 0
  type: string
- doc: Specify the path and filename for the log file.
  id: log_file
  inputBinding:
    prefix: --logfile
  type: string
- doc: Filter on a minimum read length
  id: length
  inputBinding:
    prefix: --length
  type: long
- doc: Filter on a maximum read length
  id: maxlength
  inputBinding:
    prefix: --maxlength
  type: long
- doc: Filter on a minimum average read quality score
  id: quality
  inputBinding:
    prefix: --quality
  type: string
- doc: Sequences must have GC content >= to this. Float between 0.0 and 1.0. Ignored
    if using summary file.
  id: ming_c
  inputBinding:
    prefix: --minGC
  type: long
- doc: Sequences must have GC content <= to this. Float between 0.0 and 1.0. Ignored
    if using summary file.
  id: max_gc
  inputBinding:
    prefix: --maxGC
  type: long
- doc: Trim n nucleotides from start of read
  id: head_crop
  inputBinding:
    prefix: --headcrop
  type: string
- doc: Trim n nucleotides from end of read
  id: tail_crop
  inputBinding:
    prefix: --tailcrop
  type: string
- doc: Use albacore or guppy summary file for quality scores
  id: summary
  inputBinding:
    prefix: --summary
  type: string
- doc: '{1D,2D,1D2} Which read type to extract information about from summary. Options
    are 1D, 2D or 1D2'
  id: read_type
  inputBinding:
    prefix: --readtype
  type: boolean
