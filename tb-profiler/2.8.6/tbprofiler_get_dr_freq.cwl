#!/usr/bin/env cwl-runner

baseCommand:
- tbprofiler_get_dr_freq.py
class: CommandLineTool
cwlVersion: v1.0
id: tbprofiler_get_dr_freq.py
inputs:
- doc: ''
  id: json
  inputBinding:
    position: 0
  type: string
- doc: ''
  id: meta
  inputBinding:
    prefix: --meta
  type: string
