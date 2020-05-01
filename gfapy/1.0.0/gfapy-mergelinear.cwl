#!/usr/bin/env cwl-runner

baseCommand:
- gfapy-mergelinear
class: CommandLineTool
cwlVersion: v1.0
id: gfapy-mergelinear
inputs:
- doc: create redundant paths, similar to the contigs constructed by Readjoiner
  id: redundant
  inputBinding:
    prefix: --redundant
  type: boolean
- doc: do not show progress log
  id: no_progress
  inputBinding:
    prefix: --no-progress
  type: boolean
- doc: suppress output
  id: quiet
  inputBinding:
    prefix: --quiet
  type: boolean
- doc: validation level
  id: v_level
  inputBinding:
    prefix: --vlevel
  type: string
