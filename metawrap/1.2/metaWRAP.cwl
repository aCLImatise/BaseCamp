#!/usr/bin/env cwl-runner

baseCommand:
- metaWRAP
class: CommandLineTool
cwlVersion: v1.0
id: metawrap
inputs:
- doc: show where the metawrap configuration files are stored
  id: show_config
  inputBinding:
    prefix: --show-config
  type: boolean
