#!/usr/bin/env cwl-runner

baseCommand:
- dnase_wig_tracks.py
class: CommandLineTool
cwlVersion: v1.0
id: dnase_wig_tracks.py
inputs:
- doc: ''
  id: r
  inputBinding:
    prefix: -r
  type: boolean
- doc: ''
  id: a
  inputBinding:
    prefix: -A
  type: boolean
