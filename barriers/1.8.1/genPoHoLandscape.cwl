#!/usr/bin/env cwl-runner

baseCommand:
- genPoHoLandscape
class: CommandLineTool
cwlVersion: v1.0
id: genpoholandscape
inputs:
- doc: 0      0
  id: nan
  inputBinding:
    prefix: -nan
  type: boolean
