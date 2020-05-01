#!/usr/bin/env cwl-runner

baseCommand:
- zerone
class: CommandLineTool
cwlVersion: v1.0
id: zerone
inputs:
- doc: ': window size in bp (default 300)'
  id: window
  inputBinding:
    prefix: --window
  type: boolean
- doc: ': minimum mapping quality (default 20)'
  id: quality
  inputBinding:
    prefix: --quality
  type: boolean
- doc: ': output list of targets (default table)'
  id: list_output
  inputBinding:
    prefix: --list-output
  type: boolean
- doc: ': print targets only with higher confidence restricts intervals accordingly
    in list output'
  id: confidence
  inputBinding:
    prefix: --confidence
  type: boolean
