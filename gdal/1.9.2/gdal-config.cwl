#!/usr/bin/env cwl-runner

baseCommand:
- gdal-config
class: CommandLineTool
cwlVersion: v1.0
id: gdal-config
inputs:
- doc: ''
  id: options
  inputBinding:
    position: 0
  type: string
