#!/usr/bin/env cwl-runner

baseCommand:
- skmer
class: CommandLineTool
cwlVersion: v1.0
id: skmer
inputs:
- doc: Print the traceback when an exception is raised
  id: debug
  inputBinding:
    prefix: --debug
  type: boolean
