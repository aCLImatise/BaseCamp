#!/usr/bin/env cwl-runner

baseCommand:
- tophat-fusion-post
class: CommandLineTool
cwlVersion: v1.0
id: tophat-fusion-post
inputs:
- doc: ''
  id: bowtie_index
  inputBinding:
    position: 0
  type: string
