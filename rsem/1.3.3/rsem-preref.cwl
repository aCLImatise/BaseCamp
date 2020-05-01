#!/usr/bin/env cwl-runner

baseCommand:
- rsem-preref
class: CommandLineTool
cwlVersion: v1.0
id: rsem-preref
inputs:
- doc: ': polyALen: specify the length of polyA tail you want to pad. Default is 100'
  id: l
  inputBinding:
    prefix: -l
  type: boolean
- doc: ': exceptionF: file contains a list of exception reference ids. IDs starts
    from 1. Must set if polyAChoice = 2'
  id: f
  inputBinding:
    prefix: -f
  type: boolean
- doc: ': quiet'
  id: q
  inputBinding:
    prefix: -q
  type: boolean
