#!/usr/bin/env cwl-runner

baseCommand:
- CreateIntervalsFiles
class: CommandLineTool
cwlVersion: v1.0
id: createintervalsfiles
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
