#!/usr/bin/env cwl-runner

baseCommand:
- repair
class: CommandLineTool
cwlVersion: v1.0
id: repair
inputs:
- doc: Name of input file. BAM format by default.
  id: i
  inputBinding:
    prefix: -i
  type: string
- doc: Name of output file. The output file is in BAM format.
  id: o
  inputBinding:
    prefix: -o
  type: string
- doc: The input file is in SAM format.
  id: s
  inputBinding:
    prefix: -S
  type: boolean
- doc: Compress the output BAM file. This will reduce the size of BAM file, but will
    increase the time of retrieving reads from BAM file.
  id: c
  inputBinding:
    prefix: -c
  type: boolean
- doc: Number of CPU threads. 8 by default.
  id: t
  inputBinding:
    prefix: -T
  type: long
- doc: Do not add dummy reads for singleton reads.
  id: d
  inputBinding:
    prefix: -d
  type: boolean
- doc: Do not include sequences and quality scores of reads in the output file.
  id: t
  inputBinding:
    prefix: -t
  type: boolean
