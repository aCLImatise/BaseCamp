#!/usr/bin/env cwl-runner

baseCommand:
- mhap
class: CommandLineTool
cwlVersion: v1.0
id: mhap
inputs:
- doc: ', default = "" k-mer filter file used for filtering out highly repetative
    k-mers. Must be sorted in descending order of frequency (second column).'
  id: f
  inputBinding:
    prefix: -f
  type: boolean
- doc: ', default = 16 [int], k-mer size used for MinHashing. The k-mer size for second
    stage filter is seperate, and can also be modified.'
  id: k
  inputBinding:
    prefix: -k
  type: boolean
- doc: ', default = "" Usage 2 only. The directory containing FASTA files that should
    be converted to binary format for storage.'
  id: p
  inputBinding:
    prefix: -p
  type: boolean
- doc: ', default = "" Usage 1: The FASTA file of reads, or a directory of files,
    that will be compared to the set of reads in the box (see -s). Usage 2: The output
    directory for the binary formatted dat files.'
  id: q
  inputBinding:
    prefix: -q
  type: boolean
- doc: ', default = "" Usage 1 only. The FASTA or binary dat file (see Usage 2) of
    reads that will be stored in a box, and that all subsequent reads will be compared
    to.'
  id: s
  inputBinding:
    prefix: -s
  type: boolean
