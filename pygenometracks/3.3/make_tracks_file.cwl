#!/usr/bin/env cwl-runner

baseCommand:
- make_tracks_file
class: CommandLineTool
cwlVersion: v1.0
id: make_tracks_file
inputs:
- doc: ''
  id: bed_file
  inputBinding:
    position: 0
  type: string
- doc: ''
  id: etc
  inputBinding:
    position: 1
  type: string
- doc: ''
  id: track_files
  inputBinding:
    prefix: --trackFiles
  type: string
- doc: ''
  id: o
  inputBinding:
    prefix: -o
  type: string
