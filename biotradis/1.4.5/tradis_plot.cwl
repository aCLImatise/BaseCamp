#!/usr/bin/env cwl-runner

baseCommand:
- tradis_plot
class: CommandLineTool
cwlVersion: v1.0
id: tradis_plot
inputs:
- doc: ''
  id: f
  inputBinding:
    prefix: -f
  type: File
