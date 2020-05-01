#!/usr/bin/env cwl-runner

baseCommand:
- sublong
class: CommandLineTool
cwlVersion: v1.0
id: sublong
inputs:
- doc: Base name of the index. The index must be built as a full index and has only
    one block.
  id: i
  inputBinding:
    prefix: -i
  type: string
- doc: Name of an input read file. Acceptable formats include gzipped FASTQ and FASTQ
    (automatically identified).
  id: r
  inputBinding:
    prefix: -r
  type: string
- doc: Name of an output file in BAM format.
  id: o
  inputBinding:
    prefix: -o
  type: string
- doc: Save mapping results in SAM format.
  id: sam_output
  inputBinding:
    prefix: --SAMoutput
  type: boolean
- doc: Number of CPU threads used. 1 by default.
  id: t
  inputBinding:
    prefix: -T
  type: long
- doc: Output version of the program.
  id: v
  inputBinding:
    prefix: -v
  type: boolean
- doc: Turn on the RNA-seq mode.
  id: x
  inputBinding:
    prefix: -X
  type: boolean
