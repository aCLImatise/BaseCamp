#!/usr/bin/env cwl-runner

baseCommand:
- cgatreport-profile
class: CommandLineTool
cwlVersion: v1.0
id: cgatreport-profile
inputs:
- doc: only examine certain sections [default=[]]
  id: section
  inputBinding:
    prefix: --section
  type: string
- doc: time to show [default=seconds]
  id: time
  inputBinding:
    prefix: --time
  type: string
- doc: apply filter to output [default=all]
  id: filter
  inputBinding:
    prefix: --filter
  type: string
