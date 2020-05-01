#!/usr/bin/env cwl-runner

baseCommand:
- gen-reliab-dot.pl
class: CommandLineTool
cwlVersion: v1.0
id: gen-reliab-dot.pl
inputs:
- doc: reliability file
  id: f
  inputBinding:
    prefix: -f
  type: File
- doc: alignment file
  id: a
  inputBinding:
    prefix: -a
  type: File
- doc: probabilities
  id: s
  inputBinding:
    prefix: -s
  type: string
