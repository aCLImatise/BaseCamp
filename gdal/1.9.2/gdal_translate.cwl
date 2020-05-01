#!/usr/bin/env cwl-runner

baseCommand:
- gdal_translate
class: CommandLineTool
cwlVersion: v1.0
id: gdal_translate
inputs:
- doc: ''
  id: help_general
  inputBinding:
    prefix: --help-general
  type: boolean
