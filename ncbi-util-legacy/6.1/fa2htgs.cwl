#!/usr/bin/env cwl-runner

baseCommand:
- fa2htgs
class: CommandLineTool
cwlVersion: v1.0
id: fa2htgs
inputs:
- doc: Arbitrary Keyword [String]  Optional
  id: k
  inputBinding:
    prefix: -k
  type: boolean
