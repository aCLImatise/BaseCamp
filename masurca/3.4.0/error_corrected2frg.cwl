#!/usr/bin/env cwl-runner

baseCommand:
- error_corrected2frg
class: CommandLineTool
cwlVersion: v1.0
id: error_corrected2frg
inputs:
- doc: Minimum length of a read (64)
  id: length_min
  inputBinding:
    prefix: --length-min
  type: string
