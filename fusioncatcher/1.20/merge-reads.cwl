#!/usr/bin/env cwl-runner

baseCommand:
- merge-reads.py
class: CommandLineTool
cwlVersion: v1.0
id: merge-reads.py
inputs:
- doc: It outputs the merged reads as FASTQ file.
  id: merged
  inputBinding:
    prefix: --merged
  type: string
- doc: It outputs the un-merged reads as FASTQ file.
  id: forward
  inputBinding:
    prefix: --forward
  type: string
- doc: It outputs the un-merged reads as FASTQ file.
  id: reverse
  inputBinding:
    prefix: --reverse
  type: string
- doc: It outputs also the alignment for each found overlapping.
  id: alignment
  inputBinding:
    prefix: --alignment
  type: string
- doc: It outputs the fragment size for paired reads which are found to overlap.
  id: fragment_size
  inputBinding:
    prefix: --fragment-size
  type: string
- doc: The minimum length of the region which is considered an overlap. Default is
    11.
  id: overlap
  inputBinding:
    prefix: --overlap
  type: string
- doc: Number of parallel processes/CPUs to be used for computations. In case of value
    0 then the program will use all the CPUs which are found. The default value is
    0.
  id: processes
  inputBinding:
    prefix: --processes
  type: string
