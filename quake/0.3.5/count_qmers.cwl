#!/usr/bin/env cwl-runner

baseCommand:
- count_qmers
class: CommandLineTool
cwlVersion: v1.0
id: count_qmers
inputs:
- doc: fastq file to count
  id: f
  inputBinding:
    prefix: -f
  type: string
- doc: 'Length of kmer '
  id: k
  inputBinding:
    prefix: -k
  type: string
- doc: Gigabyte limit on RAM. If limited, the output will contain redundancies
  id: l
  inputBinding:
    prefix: -l
  type: string
- doc: 'Define hash table size explicitly. [Default: chosen via k]'
  id: t
  inputBinding:
    prefix: -t
  type: long
- doc: 'Maximum k-mer count. [Default: 500]'
  id: m
  inputBinding:
    prefix: -m
  type: long
- doc: Quality value ascii scale, generally 64 or 33.  If not specified, it will guess.
  id: q
  inputBinding:
    prefix: -q
  type: string
