#!/usr/bin/env cwl-runner

baseCommand:
- fusioncatcher-batch.py
class: CommandLineTool
cwlVersion: v1.0
id: fusioncatcher-batch.py
inputs:
- doc: file with two columns (that are tab separated), where the first column
  id: a
  inputBinding:
    prefix: '- a'
  type: string
- doc: which contains subdirectories and each subdirectory contains one
  id: a
  inputBinding:
    prefix: '- a'
  type: Directory
