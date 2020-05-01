#!/usr/bin/env cwl-runner

baseCommand:
- coords2clnt.py
class: CommandLineTool
cwlVersion: v1.0
id: coords2clnt.py
inputs:
- doc: Path to bed input file.
  id: in_file
  inputBinding:
    position: 0
  type: string
- doc: Be verbose.
  id: verbose
  inputBinding:
    prefix: --verbose
  type: boolean
- doc: Print lots of debugging information
  id: debug
  inputBinding:
    prefix: --debug
  type: boolean
