#!/usr/bin/env cwl-runner

baseCommand:
- pair8removal.py
class: CommandLineTool
cwlVersion: v1.0
id: pair8removal.py
inputs:
- doc: Tab separeted text file such that one line has two reads which are paired (i.e.
    generated via 'paste - - - - - - - -').
  id: input
  inputBinding:
    prefix: --input
  type: string
- doc: Tab separeted text file such that one line has two reads which are paired (i.e.
    generated via 'paste - - - - - - - -').
  id: output
  inputBinding:
    prefix: --output
  type: string
- doc: The minimum length of a read. All reads shorter than this will be removed.
    Default is 25.
  id: length
  inputBinding:
    prefix: --length
  type: long
