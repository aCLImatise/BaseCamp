#!/usr/bin/env cwl-runner

baseCommand:
- SAMstatsParallel
class: CommandLineTool
cwlVersion: v1.0
id: samstatsparallel
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
- doc: 'number of threads to use. Note: the default is'
  id: threads
  inputBinding:
    prefix: --threads
  type: string
