#!/usr/bin/env cwl-runner

baseCommand:
- gcCounter
class: CommandLineTool
cwlVersion: v1.0
id: gccounter
inputs:
- doc: ''
  id: fast_a_reference
  inputBinding:
    position: 0
  type: string
- doc: Outputs in SEG format
  id: seg
  inputBinding:
    prefix: --seg
  type: boolean
- doc: Specify the size of non-overlapping windows [1000]
  id: window
  inputBinding:
    prefix: --window
  type: long
- doc: List all chromosomes in FASTA reference file
  id: list
  inputBinding:
    prefix: --list
  type: boolean
- doc: Specify the entries and order of sequences to analyze [ALL], the <string> should
    be a comma-delimited list (NO spaces)
  id: chromosome
  inputBinding:
    prefix: --chromosome
  type: string
