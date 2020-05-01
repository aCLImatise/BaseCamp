#!/usr/bin/env cwl-runner

baseCommand:
- mhcflurry-downloads
class: CommandLineTool
cwlVersion: v1.0
id: mhcflurry-downloads
inputs:
- doc: Output less
  id: quiet
  inputBinding:
    prefix: --quiet
  type: boolean
- doc: Output more
  id: verbose
  inputBinding:
    prefix: --verbose
  type: boolean
