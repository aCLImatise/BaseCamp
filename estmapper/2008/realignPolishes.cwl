#!/usr/bin/env cwl-runner

baseCommand:
- realignPolishes
class: CommandLineTool
cwlVersion: v1.0
id: realignpolishes
inputs:
- doc: ": Don't actually do the work, just count the statistics"
  id: q
  inputBinding:
    prefix: -q
  type: boolean
