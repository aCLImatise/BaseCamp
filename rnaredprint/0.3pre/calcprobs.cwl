#!/usr/bin/env cwl-runner

baseCommand:
- calcprobs.py
class: CommandLineTool
cwlVersion: v1.0
id: calcprobs.py
inputs:
- doc: 'Read structures from input file. Format must be dot- bracket structures, each
    per one line with a trailing line containing only a semi-colon. (default: None)'
  id: input
  inputBinding:
    prefix: --input
  type: string
- doc: 'Temperature of the energy calculations. (default: 37.0)'
  id: temperature
  inputBinding:
    prefix: --temperature
  type: string
