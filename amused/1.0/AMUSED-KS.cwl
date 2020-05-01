#!/usr/bin/env cwl-runner

baseCommand:
- AMUSED-KS
class: CommandLineTool
cwlVersion: v1.0
id: amused-ks
inputs:
- doc: = no changing to upper case before scan (non ATGC bases are discarded)
  id: nu
  inputBinding:
    prefix: -nu
  type: boolean
