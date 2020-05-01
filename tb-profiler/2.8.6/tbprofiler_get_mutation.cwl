#!/usr/bin/env cwl-runner

baseCommand:
- tbprofiler_get_mutation.py
class: CommandLineTool
cwlVersion: v1.0
id: tbprofiler_get_mutation.py
inputs:
- doc: NGS Platform
  id: gene
  inputBinding:
    position: 0
  type: string
- doc: NGS Platform
  id: mutation
  inputBinding:
    position: 1
  type: string
