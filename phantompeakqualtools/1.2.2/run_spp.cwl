#!/usr/bin/env cwl-runner

baseCommand:
- run_spp.R
class: CommandLineTool
cwlVersion: v1.0
id: run_spp.r
inputs:
- doc: ''
  id: r_script
  inputBinding:
    position: 0
  type: string
- doc: ''
  id: run_sp_pr
  inputBinding:
    position: 1
  type: string
