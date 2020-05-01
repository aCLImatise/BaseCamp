#!/usr/bin/env cwl-runner

baseCommand:
- hmmscore
class: CommandLineTool
cwlVersion: v1.0
id: hmmscore
inputs:
- doc: or ....
  id: i
  inputBinding:
    prefix: -i
  type: string
- doc: or ....
  id: model_file
  inputBinding:
    prefix: -modelfile
  type: string
- doc: ',file2,...         or ....'
  id: track_mod
  inputBinding:
    prefix: -trackmod
  type: File
- doc: ',...           or ....'
  id: model_library
  inputBinding:
    prefix: -modellibrary
  type: File
- doc: '&W_query_sequence         required ....'
  id: query
  inputBinding:
    prefix: -query
  type: string
