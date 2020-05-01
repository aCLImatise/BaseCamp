#!/usr/bin/env cwl-runner

baseCommand:
- bamFlags
class: CommandLineTool
cwlVersion: v1.0
id: bamflags
inputs:
- doc: BAM flags to interpret
  id: flags
  inputBinding:
    position: 0
  type: string
