#!/usr/bin/env cwl-runner

baseCommand:
- chainsaw
class: CommandLineTool
cwlVersion: v1.0
id: chainsaw
inputs:
- doc: ''
  id: filenames
  inputBinding:
    position: 0
  type: File
- doc: ': add a protein list filter'
  id: filter
  inputBinding:
    prefix: --filter
  type: string
