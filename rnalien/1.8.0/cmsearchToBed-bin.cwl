#!/usr/bin/env cwl-runner

baseCommand:
- cmsearchToBed-bin
class: CommandLineTool
cwlVersion: v1.0
id: cmsearchtobed-bin
inputs:
- doc: Loud verbosity
  id: verbose
  inputBinding:
    prefix: --verbose
  type: boolean
- doc: Quiet verbosity
  id: quiet
  inputBinding:
    prefix: --quiet
  type: boolean
