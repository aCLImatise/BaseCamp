#!/usr/bin/env cwl-runner

baseCommand:
- iu-deinterleave-fastq
class: CommandLineTool
cwlVersion: v1.0
id: iu-deinterleave-fastq
inputs:
- doc: FASTQ file to be de-interleaved
  id: input
  inputBinding:
    position: 0
  type: string
