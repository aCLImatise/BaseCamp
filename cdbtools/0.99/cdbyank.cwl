#!/usr/bin/env cwl-runner

baseCommand:
- cdbyank
class: CommandLineTool
cwlVersion: v1.0
id: cdbyank
inputs:
- doc: the number of records indexed
  id: n
  inputBinding:
    prefix: -n
  type: string
- doc: all keys stored in <index_file>
  id: l
  inputBinding:
    prefix: -l
  type: string
- doc: indexing summary info
  id: s
  inputBinding:
    prefix: -s
  type: string
