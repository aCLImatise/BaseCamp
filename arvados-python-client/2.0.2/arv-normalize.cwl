#!/usr/bin/env cwl-runner

baseCommand:
- arv-normalize
class: CommandLineTool
cwlVersion: v1.0
id: arv-normalize
inputs:
- doc: The file to extract from the input manifest
  id: extract
  inputBinding:
    prefix: --extract
  type: string
- doc: Strip authorization tokens
  id: strip
  inputBinding:
    prefix: --strip
  type: boolean
