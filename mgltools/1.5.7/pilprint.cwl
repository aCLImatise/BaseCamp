#!/usr/bin/env cwl-runner

baseCommand:
- pilprint.py
class: CommandLineTool
cwlVersion: v1.0
id: pilprint.py
inputs:
- doc: ''
  id: pil_print
  inputBinding:
    position: 0
  type: string
- doc: ''
  id: files
  inputBinding:
    position: 1
  type: File
- doc: colour printer (default is monochrome)
  id: c
  inputBinding:
    prefix: -c
  type: boolean
- doc: print via lpr (default is stdout)
  id: p
  inputBinding:
    prefix: -p
  type: boolean
- doc: same as -p but use given printer
  id: p
  inputBinding:
    prefix: -P
  type: string
