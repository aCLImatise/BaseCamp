#!/usr/bin/env cwl-runner

baseCommand:
- merge_coords
class: CommandLineTool
cwlVersion: v1.0
id: merge_coords
inputs:
- doc: Output file (stdout)
  id: output
  inputBinding:
    prefix: --output
  type: File
