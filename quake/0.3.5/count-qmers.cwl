#!/usr/bin/env cwl-runner

baseCommand:
- count-qmers
class: CommandLineTool
cwlVersion: v1.0
id: count-qmers
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
- doc: 'Minimum count to report (default: >0)'
  id: m
  inputBinding:
    prefix: -m
  type: long
- doc: Gigabyte limit on RAM. If limited, the output will contain redundancies
  id: l
  inputBinding:
    prefix: -l
  type: string
- doc: Quality value ascii scale, generally 64 or 33.  If not specified, it will guess.
  id: q
  inputBinding:
    prefix: -q
  type: string
