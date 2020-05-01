#!/usr/bin/env cwl-runner

baseCommand:
- _fcontrast
class: CommandLineTool
cwlVersion: v1.0
id: _fcontrast
inputs:
- doc: boolean    [N] Within-population variation in data
  id: vary_within
  inputBinding:
    prefix: -varywithin
  type: boolean
