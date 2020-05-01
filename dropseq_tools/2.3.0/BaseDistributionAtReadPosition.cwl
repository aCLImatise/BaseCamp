#!/usr/bin/env cwl-runner

baseCommand:
- BaseDistributionAtReadPosition
class: CommandLineTool
cwlVersion: v1.0
id: basedistributionatreadposition
inputs:
- doc: (default 4g)
  id: m
  inputBinding:
    prefix: -m
  type: string
- doc: final command line before executing
  id: v
  inputBinding:
    prefix: -v
  type: string
