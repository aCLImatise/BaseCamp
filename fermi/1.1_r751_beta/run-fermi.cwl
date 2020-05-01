#!/usr/bin/env cwl-runner

baseCommand:
- run-fermi.pl
class: CommandLineTool
cwlVersion: v1.0
id: run-fermi.pl
inputs:
- doc: the input files are paired (ends in separate files)
  id: p
  inputBinding:
    prefix: -P
  type: boolean
- doc: the input is collated/initerleaved FASTQ (two ends in the same file)
  id: c
  inputBinding:
    prefix: -c
  type: boolean
- doc: halve the number of jobs for building the split index (effective with -B)
  id: d
  inputBinding:
    prefix: -D
  type: boolean
- doc: use the original algorithm for constructing FMD-index (default is BCR)
  id: b
  inputBinding:
    prefix: -B
  type: boolean
- doc: skip error correction
  id: c
  inputBinding:
    prefix: -C
  type: boolean
- doc: fermi executable [fermi]
  id: e
  inputBinding:
    prefix: -e
  type: File
- doc: number of threads [2]
  id: t
  inputBinding:
    prefix: -t
  type: long
- doc: prefix of output files [fmdef]
  id: p
  inputBinding:
    prefix: -p
  type: string
- doc: trim reads to INT bp after error correction [inf]
  id: l
  inputBinding:
    prefix: -l
  type: long
- doc: minimum overlap [50]
  id: k
  inputBinding:
    prefix: -k
  type: long
