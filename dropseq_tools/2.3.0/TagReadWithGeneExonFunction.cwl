#!/usr/bin/env cwl-runner

baseCommand:
- TagReadWithGeneExonFunction
class: CommandLineTool
cwlVersion: v1.0
id: tagreadwithgeneexonfunction
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
