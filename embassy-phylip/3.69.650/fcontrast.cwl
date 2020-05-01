#!/usr/bin/env cwl-runner

baseCommand:
- fcontrast
class: CommandLineTool
cwlVersion: v1.0
id: fcontrast
inputs:
- doc: boolean    [N] Within-population variation in data
  id: vary_within
  inputBinding:
    prefix: -varywithin
  type: boolean
