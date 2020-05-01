#!/usr/bin/env cwl-runner

baseCommand:
- env
class: CommandLineTool
cwlVersion: v1.0
id: env
inputs:
- doc: remove variable from the environment
  id: unset
  inputBinding:
    prefix: --unset
  type: string
