#!/usr/bin/env cwl-runner

baseCommand:
- gffcompare
class: CommandLineTool
cwlVersion: v1.0
id: gffcompare
inputs:
- doc: /-A/-X, do NOT discard any redundant transfrag matching a reference
  id: k
  inputBinding:
    prefix: -K
  type: string
