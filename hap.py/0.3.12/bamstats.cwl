#!/usr/bin/env cwl-runner

baseCommand:
- bamstats.py
class: CommandLineTool
cwlVersion: v1.0
id: bamstats.py
inputs:
- doc: Output CSV file name
  id: output
  inputBinding:
    prefix: --output
  type: string
