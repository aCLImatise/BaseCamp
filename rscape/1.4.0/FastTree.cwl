#!/usr/bin/env cwl-runner

baseCommand:
- FastTree
class: CommandLineTool
cwlVersion: v1.0
id: fasttree
inputs:
- doc: options
  id: expert
  inputBinding:
    prefix: -expert
  type: string
