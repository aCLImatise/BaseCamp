#!/usr/bin/env cwl-runner

baseCommand:
- echo
class: CommandLineTool
cwlVersion: v1.0
id: echo
inputs:
- doc: not output the trailing newline
  id: n
  inputBinding:
    prefix: -n
  type: string
- doc: enable interpretation of backslash escapes
  id: e
  inputBinding:
    prefix: -e
  type: boolean
- doc: disable interpretation of backslash escapes (default)
  id: e
  inputBinding:
    prefix: -E
  type: boolean
