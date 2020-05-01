#!/usr/bin/env cwl-runner

baseCommand:
- tty
class: CommandLineTool
cwlVersion: v1.0
id: tty
inputs:
- doc: nothing, only return an exit status
  id: silent
  inputBinding:
    prefix: --silent
  type: string
