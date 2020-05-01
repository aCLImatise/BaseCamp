#!/usr/bin/env cwl-runner

baseCommand:
- dbginfo
class: CommandLineTool
cwlVersion: v1.0
id: dbginfo
inputs:
- doc: '(1 arg) :    graph file'
  id: in
  inputBinding:
    prefix: -in
  type: boolean
