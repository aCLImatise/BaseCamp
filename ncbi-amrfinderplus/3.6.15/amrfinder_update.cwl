#!/usr/bin/env cwl-runner

baseCommand:
- amrfinder_update
class: CommandLineTool
cwlVersion: v1.0
id: amrfinder_update
inputs:
- doc: ''
  id: database
  inputBinding:
    prefix: --database
  type: string
- doc: ''
  id: quiet
  inputBinding:
    prefix: --quiet
  type: boolean
- doc: ''
  id: threads
  inputBinding:
    prefix: --threads
  type: string
- doc: ''
  id: debug
  inputBinding:
    prefix: --debug
  type: boolean
- doc: ''
  id: log
  inputBinding:
    prefix: --log
  type: string
