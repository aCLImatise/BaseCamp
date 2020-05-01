#!/usr/bin/env cwl-runner

baseCommand:
- overlap.py
class: CommandLineTool
cwlVersion: v1.0
id: overlap.py
inputs:
- doc: It gives a statistics regarding the amount of mate reads which are overlapping.
  id: output
  inputBinding:
    prefix: --output
  type: string
- doc: It outputs also the alignment for each found overlapping.
  id: alignment
  inputBinding:
    prefix: --alignment
  type: string
- doc: It outputs in the alignment file, the info for merging the paired-end reads
    (len_read_1,len_read_2,mismatches _in_overlapping_region).
  id: merged
  inputBinding:
    prefix: --merged
  type: boolean
- doc: It outputs the fragment size for paired reads which are found to overlap.
  id: fragment_size
  inputBinding:
    prefix: --fragment-size
  type: string
- doc: The minimum length of the region which is considered an overlap. Default is
    13.
  id: overlap
  inputBinding:
    prefix: --overlap
  type: string
- doc: Fail gracefully in case the the input reads have different lengths. Default
    is False.
  id: fail_gracefully
  inputBinding:
    prefix: --fail-gracefully
  type: boolean
- doc: Number of parallel processes/CPUs to be used for computations. In case of value
    0 then the program will use all the CPUs which are found. The default value is
    0.
  id: processes
  inputBinding:
    prefix: --processes
  type: string
