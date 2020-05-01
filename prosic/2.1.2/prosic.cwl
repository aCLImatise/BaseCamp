#!/usr/bin/env cwl-runner

baseCommand:
- prosic
class: CommandLineTool
cwlVersion: v1.0
id: prosic
inputs:
- doc: Provide verbose output.
  id: v
  inputBinding:
    prefix: -v
  type: boolean
