#!/usr/bin/env cwl-runner

baseCommand:
- RNAlien
class: CommandLineTool
cwlVersion: v1.0
id: rnalien
inputs:
- doc: Print just the version number
  id: numeric_version
  inputBinding:
    prefix: --numeric-version
  type: boolean
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
