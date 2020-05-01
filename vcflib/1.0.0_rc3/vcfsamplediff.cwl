#!/usr/bin/env cwl-runner

baseCommand:
- vcfsamplediff
class: CommandLineTool
cwlVersion: v1.0
id: vcfsamplediff
inputs:
- doc: Require that no observations in the germline support the somatic alternate.
  id: strict
  inputBinding:
    prefix: --strict
  type: boolean
