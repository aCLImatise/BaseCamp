#!/usr/bin/env cwl-runner

baseCommand:
- tree-events-dlcpar
class: CommandLineTool
cwlVersion: v1.0
id: tree-events-dlcpar
inputs:
- doc: set to ignore extra lineages at implied speciation nodes
  id: explicit
  inputBinding:
    prefix: --explicit
  type: boolean
