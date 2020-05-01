#!/usr/bin/env cwl-runner

baseCommand:
- makeset
class: CommandLineTool
cwlVersion: v1.0
id: makeset
inputs:
- doc: Bioseq-set.release [String]  Optional
  id: r
  inputBinding:
    prefix: -r
  type: boolean
