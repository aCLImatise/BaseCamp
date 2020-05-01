#!/usr/bin/env cwl-runner

baseCommand:
- dnase_cut_counter.py
class: CommandLineTool
cwlVersion: v1.0
id: dnase_cut_counter.py
inputs:
- doc: ''
  id: a
  inputBinding:
    prefix: -A
  type: boolean
