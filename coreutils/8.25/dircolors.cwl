#!/usr/bin/env cwl-runner

baseCommand:
- dircolors
class: CommandLineTool
cwlVersion: v1.0
id: dircolors
inputs:
- doc: Bourne shell code to set LS_COLORS
  id: bourne_shell
  inputBinding:
    prefix: --bourne-shell
  type: string
- doc: C shell code to set LS_COLORS
  id: c_shell
  inputBinding:
    prefix: --c-shell
  type: string
- doc: defaults
  id: print_database
  inputBinding:
    prefix: --print-database
  type: string
