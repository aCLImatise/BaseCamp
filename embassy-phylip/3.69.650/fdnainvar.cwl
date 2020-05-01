#!/usr/bin/env cwl-runner

baseCommand:
- fdnainvar
class: CommandLineTool
cwlVersion: v1.0
id: fdnainvar
inputs:
- doc: properties Phylip weights file (optional)
  id: weights
  inputBinding:
    prefix: -weights
  type: boolean
- doc: boolean    [N] Print data at start of run
  id: print_data
  inputBinding:
    prefix: -printdata
  type: boolean
