#!/usr/bin/env cwl-runner

baseCommand:
- kounta
class: CommandLineTool
cwlVersion: v1.0
id: kounta
inputs:
- doc: file     File of filenames to process
  id: fof_n
  inputBinding:
    prefix: --fofn
  type: boolean
- doc: int      k-mer length [25]
  id: km_er
  inputBinding:
    prefix: --kmer
  type: boolean
- doc: int      Min k-mer frequency (FASTQ only) [3]
  id: min_freq
  inputBinding:
    prefix: --minfreq
  type: boolean
- doc: file     Output matrix file
  id: out
  inputBinding:
    prefix: --out
  type: boolean
- doc: int      RAM in gigabytes to use [4]
  id: ram
  inputBinding:
    prefix: --ram
  type: boolean
- doc: string   Fast working directory [auto]
  id: tempdir
  inputBinding:
    prefix: --tempdir
  type: boolean
- doc: int      Threads to use [1]
  id: threads
  inputBinding:
    prefix: --threads
  type: boolean
