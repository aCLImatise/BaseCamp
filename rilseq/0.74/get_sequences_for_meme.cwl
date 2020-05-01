#!/usr/bin/env cwl-runner

baseCommand:
- get_sequences_for_meme.py
class: CommandLineTool
cwlVersion: v1.0
id: get_sequences_for_meme.py
inputs:
- doc: ''
  id: p
  inputBinding:
    prefix: -p
  type: string
