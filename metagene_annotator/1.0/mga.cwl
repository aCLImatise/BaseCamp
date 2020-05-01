#!/usr/bin/env cwl-runner

baseCommand:
- mga
class: CommandLineTool
cwlVersion: v1.0
id: mga
inputs:
- doc: ': multiple species (sequences are individually treated)'
  id: m
  inputBinding:
    prefix: -m
  type: boolean
- doc: ': single species (sequences are treated as a unit)'
  id: s
  inputBinding:
    prefix: -s
  type: boolean
