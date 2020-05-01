#!/usr/bin/env cwl-runner

baseCommand:
- unexpand
class: CommandLineTool
cwlVersion: v1.0
id: unexpand
inputs:
- doc: convert all blanks, instead of just initial blanks
  id: all
  inputBinding:
    prefix: --all
  type: boolean
- doc: convert only leading sequences of blanks (overrides -a)
  id: first_only
  inputBinding:
    prefix: --first-only
  type: boolean
- doc: have tabs N characters apart instead of 8 (enables -a)
  id: tabs
  inputBinding:
    prefix: --tabs
  type: string
- doc: use comma separated LIST of tab positions (enables -a)
  id: tabs
  inputBinding:
    prefix: --tabs
  type: string
