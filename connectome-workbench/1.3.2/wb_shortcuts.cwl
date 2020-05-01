#!/usr/bin/env cwl-runner

baseCommand:
- wb_shortcuts
class: CommandLineTool
cwlVersion: v1.0
id: wb_shortcuts
inputs:
- doc: display version info
  id: version
  inputBinding:
    prefix: -version
  type: boolean
- doc: show available functions
  id: list_functions
  inputBinding:
    prefix: -list-functions
  type: boolean
- doc: show all functions and their help info - VERY LONG
  id: all_functions_help
  inputBinding:
    prefix: -all-functions-help
  type: boolean
