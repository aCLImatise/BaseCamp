#!/usr/bin/env cwl-runner

baseCommand:
- pilfile.py
class: CommandLineTool
cwlVersion: v1.0
id: pilfile.py
inputs:
- doc: ''
  id: pil_file
  inputBinding:
    position: 0
  type: string
- doc: ''
  id: option
  inputBinding:
    position: 1
  type: string
- doc: ''
  id: files
  inputBinding:
    position: 2
  type: File
- doc: list supported file formats
  id: f
  inputBinding:
    prefix: -f
  type: boolean
- doc: show associated info and tile data
  id: i
  inputBinding:
    prefix: -i
  type: boolean
- doc: verify file headers
  id: v
  inputBinding:
    prefix: -v
  type: boolean
- doc: quiet, don't warn for unidentified/missing/broken files
  id: q
  inputBinding:
    prefix: -q
  type: boolean
