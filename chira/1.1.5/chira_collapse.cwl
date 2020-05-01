#!/usr/bin/env cwl-runner

baseCommand:
- chira_collapse.py
class: CommandLineTool
cwlVersion: v1.0
id: chira_collapse.py
inputs:
- doc: ', --fastq          Input fastq file (default: None)'
  id: i
  inputBinding:
    prefix: -i
  type: boolean
- doc: ', --fasta          Output fasta file (default: None)'
  id: o
  inputBinding:
    prefix: -o
  type: boolean
- doc: "Length of the UMI, if present.It is trimmed from the 5' end of each read and\
    \ appended to the tag id (default: 0)"
  id: umi_len
  inputBinding:
    prefix: --umi_len
  type: string
