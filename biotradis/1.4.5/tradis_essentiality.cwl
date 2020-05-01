#!/usr/bin/env cwl-runner

baseCommand:
- tradis_essentiality.R
class: CommandLineTool
cwlVersion: v1.0
id: tradis_essentiality.r
inputs:
- doc: ''
  id: data_tab
  inputBinding:
    position: 0
  type: string
