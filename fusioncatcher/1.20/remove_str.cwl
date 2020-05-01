#!/usr/bin/env cwl-runner

baseCommand:
- remove_str.py
class: CommandLineTool
cwlVersion: v1.0
id: remove_str.py
inputs:
- doc: The input FASTQ file.
  id: input
  inputBinding:
    prefix: --input
  type: string
- doc: The output FASTQ file.
  id: output
  inputBinding:
    prefix: --output
  type: string
- doc: The output FASTQ file containing the reads which are removed from the input
    due to high content of short tandem repeats (STR).
  id: str
  inputBinding:
    prefix: --str
  type: string
- doc: It outputs a detailed log.
  id: log
  inputBinding:
    prefix: --log
  type: string
- doc: The length of region where the two consecutive windows are overlapping. Default
    is 12.
  id: overlap
  inputBinding:
    prefix: --overlap
  type: string
- doc: The length of the sliding window. Default is 24.
  id: length
  inputBinding:
    prefix: --length
  type: string
- doc: The length of the kmer used in computing the codelength. Default is 2.
  id: km_er
  inputBinding:
    prefix: --kmer
  type: string
- doc: Any window which compresses less this threshold is considered to contain a
    short tandem repeat and the read will be filtered out. Default is 1.4.
  id: threshold
  inputBinding:
    prefix: --threshold
  type: string
- doc: 'Daniel Nicorici, E-mail: Daniel.Nicorici@gmail.com'
  id: author
  inputBinding:
    prefix: --author
  type: string
- doc: Do not print status messages to console.
  id: quiet
  inputBinding:
    prefix: --quiet
  type: boolean
- doc: Number of parallel processes/CPUs to be used for computations. In case of value
    0 then the program will use all the CPUs which are found. The default value is
    0.
  id: processes
  inputBinding:
    prefix: --processes
  type: string
