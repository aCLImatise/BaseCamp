#!/usr/bin/env cwl-runner

baseCommand:
- tabix
class: CommandLineTool
cwlVersion: v1.0
id: tabix
inputs:
- doc: print only the header lines
  id: h
  inputBinding:
    prefix: -H
  type: boolean
- doc: list chromosome names
  id: l
  inputBinding:
    prefix: -l
  type: boolean
- doc: force to overwrite the index
  id: f
  inputBinding:
    prefix: -f
  type: boolean
