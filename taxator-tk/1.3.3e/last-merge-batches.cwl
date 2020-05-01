#!/usr/bin/env cwl-runner

baseCommand:
- last-merge-batches
class: CommandLineTool
cwlVersion: v1.0
id: last-merge-batches
inputs:
- doc: ''
  id: files
  inputBinding:
    position: 0
  type: File
