#!/usr/bin/env cwl-runner

baseCommand:
- bam2fasta
class: CommandLineTool
cwlVersion: v1.0
id: bam2fasta
inputs:
- doc: ''
  id: command
  inputBinding:
    position: 0
  type: string
