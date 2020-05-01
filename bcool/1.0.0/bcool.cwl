#!/usr/bin/env cwl-runner

baseCommand:
- bcool
class: CommandLineTool
cwlVersion: v1.0
id: bcool
inputs:
- doc: (MANDATORY) input fasta read files. Several read files must be concatenated
  id: u
  inputBinding:
    prefix: -u
  type: string
- doc: Path to store the results (Default = current directory)
  id: o
  inputBinding:
    prefix: -o
  type: string
- doc: Number of cores used (Default = 1)
  id: t
  inputBinding:
    prefix: -t
  type: string
- doc: k-mer size (Default = AUTO)
  id: k
  inputBinding:
    prefix: -k
  type: string
- doc: k-mers present strictly less than this number of times in the dataset will
    be discarded (Default = 2)
  id: s
  inputBinding:
    prefix: -s
  type: long
- doc: Unitig Coverage for cleaning (Default = AUTO)
  id: s
  inputBinding:
    prefix: -S
  type: string
- doc: (ADVANCED) Maximum number of corrected bases (Default = 10)
  id: m
  inputBinding:
    prefix: -m
  type: string
- doc: (ADVANCED) index one out of i anchors to reduce memory consumption (Default
    = 1)
  id: i
  inputBinding:
    prefix: -i
  type: string
- doc: (ADVANCED) Maximum occurence of an anchor (Default = 1), better correction
    for repetitive genome but slower
  id: n
  inputBinding:
    prefix: -n
  type: long
- doc: (ADVANCED) Print command lines
  id: d
  inputBinding:
    prefix: -d
  type: string
