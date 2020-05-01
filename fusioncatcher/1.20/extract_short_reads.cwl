#!/usr/bin/env cwl-runner

baseCommand:
- extract_short_reads.py
class: CommandLineTool
cwlVersion: v1.0
id: extract_short_reads.py
inputs:
- doc: The input file in FASTQ format (Solexa). Can be given as gzipped file too.
  id: input
  inputBinding:
    prefix: --input
  type: string
- doc: A text file containing on each line a name of short read which should be extracted
    from the input FASTQ file.
  id: list
  inputBinding:
    prefix: --list
  type: string
- doc: The output FASTQ file.
  id: output
  inputBinding:
    prefix: --output
  type: string
- doc: If specified then only the mate reads from the input list '--list' are extracted.
    Default is False.
  id: mate
  inputBinding:
    prefix: --mate
  type: boolean
- doc: The size of the buffer used for keeping the list of reads ids (given by --list).
    Default is 2000000000.
  id: buffer_size
  inputBinding:
    prefix: --buffer-size
  type: string
