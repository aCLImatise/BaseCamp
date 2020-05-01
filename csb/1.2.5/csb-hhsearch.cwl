#!/usr/bin/env cwl-runner

baseCommand:
- csb-hhsearch
class: CommandLineTool
cwlVersion: v1.0
id: csb-hhsearch
inputs:
- doc: query HMM file(s)
  id: query
  inputBinding:
    position: 0
  type: string
- doc: full path to the HHsearch binary (default=hhsearch)
  id: binary
  inputBinding:
    prefix: --binary
  type: string
- doc: maximum degree of parallelism (default=8)
  id: cpu
  inputBinding:
    prefix: --cpu
  type: string
- doc: the subject (database) HMM file
  id: database
  inputBinding:
    prefix: --database
  type: string
