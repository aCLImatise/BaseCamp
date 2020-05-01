#!/usr/bin/env cwl-runner

baseCommand:
- velveth
class: CommandLineTool
cwlVersion: v1.0
id: velveth
inputs:
- doc: ': directory name for output files'
  id: directory
  inputBinding:
    position: 0
  type: Directory
- doc: ': odd integer (if even, it will be decremented) <= 64 (if above, will be reduced)'
  id: hash_length
  inputBinding:
    position: 1
  type: string
- doc: ': path to sequence file or - for standard input'
  id: filename
  inputBinding:
    position: 2
  type: File
- doc: ': for strand specific transcriptome sequencing data (default: off)'
  id: strand_specific
  inputBinding:
    prefix: -strand_specific
  type: boolean
