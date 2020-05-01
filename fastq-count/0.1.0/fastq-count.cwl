#!/usr/bin/env cwl-runner

baseCommand:
- fastq-count
class: CommandLineTool
cwlVersion: v1.0
id: fastq-count
inputs:
- doc: ''
  id: r1fq
  inputBinding:
    position: 0
  type: string
- doc: ''
  id: r2fq
  inputBinding:
    position: 1
  type: string
