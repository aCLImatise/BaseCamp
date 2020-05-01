#!/usr/bin/env cwl-runner

baseCommand:
- fix.py
class: CommandLineTool
cwlVersion: v1.0
id: fix.py
inputs:
- doc: The input list of gene pairs.
  id: input
  inputBinding:
    prefix: --input
  type: string
- doc: The sorted output of gene pairs.
  id: output
  inputBinding:
    prefix: --output
  type: string
- doc: 'Daniel Nicorici, E-mail: Daniel.Nicorici@gmail.com'
  id: author
  inputBinding:
    prefix: --author
  type: string
