#!/usr/bin/env cwl-runner

baseCommand:
- mkmapfile
class: CommandLineTool
cwlVersion: v1.0
id: mkmapfile
inputs:
- doc: ''
  id: m
  inputBinding:
    prefix: -M
  type: string
- doc: ''
  id: u
  inputBinding:
    prefix: -U
  type: string
