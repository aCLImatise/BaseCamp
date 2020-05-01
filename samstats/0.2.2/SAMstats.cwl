#!/usr/bin/env cwl-runner

baseCommand:
- SAMstats
class: CommandLineTool
cwlVersion: v1.0
id: samstats
inputs:
- doc: Input SAM file. Use '-' if input is being piped from stdin. File must be sorted
    by read name.
  id: sorted_sam_file
  inputBinding:
    prefix: --sorted_sam_file
  type: string
- doc: Output file name to store alignment statistics. The statistics will be printed
    to stdout if no file is provided
  id: out_f
  inputBinding:
    prefix: --outf
  type: string
- doc: Number of lines to read a time from sortedSamFile
  id: chunk_size
  inputBinding:
    prefix: --chunk_size
  type: string
