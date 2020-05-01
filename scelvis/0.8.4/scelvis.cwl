#!/usr/bin/env cwl-runner

baseCommand:
- scelvis
class: CommandLineTool
cwlVersion: v1.0
id: scelvis
inputs:
- doc: Increase verbosity.
  id: verbose
  inputBinding:
    prefix: --verbose
  type: boolean
