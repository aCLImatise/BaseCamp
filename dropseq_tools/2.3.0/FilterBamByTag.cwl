#!/usr/bin/env cwl-runner

baseCommand:
- FilterBamByTag
class: CommandLineTool
cwlVersion: v1.0
id: filterbambytag
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
