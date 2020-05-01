#!/usr/bin/env cwl-runner

baseCommand:
- assembly-scan
class: CommandLineTool
cwlVersion: v1.0
id: assembly-scan
inputs:
- doc: ''
  id: assembly_summary_py
  inputBinding:
    position: 0
  type: string
- doc: ''
  id: assembly
  inputBinding:
    position: 1
  type: string
