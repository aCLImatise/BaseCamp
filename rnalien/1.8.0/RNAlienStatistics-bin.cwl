#!/usr/bin/env cwl-runner

baseCommand:
- RNAlienStatistics-bin
class: CommandLineTool
cwlVersion: v1.0
id: rnalienstatistics-bin
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
