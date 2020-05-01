#!/usr/bin/env cwl-runner

baseCommand:
- sam_juncs
class: CommandLineTool
cwlVersion: v1.0
id: sam_juncs
inputs:
- doc: ''
  id: hits_sam
  inputBinding:
    position: 0
  type: string
