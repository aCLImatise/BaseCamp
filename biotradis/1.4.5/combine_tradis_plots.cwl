#!/usr/bin/env cwl-runner

baseCommand:
- combine_tradis_plots
class: CommandLineTool
cwlVersion: v1.0
id: combine_tradis_plots
inputs:
- doc: ''
  id: p
  inputBinding:
    prefix: -p
  type: string
