#!/usr/bin/env cwl-runner

baseCommand:
- iu-trim-fastq
class: CommandLineTool
cwlVersion: v1.0
id: iu-trim-fastq
inputs:
- doc: ''
  id: f
  inputBinding:
    prefix: -f
  type: long
- doc: ''
  id: t
  inputBinding:
    prefix: -t
  type: long
