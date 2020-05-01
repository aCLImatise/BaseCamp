#!/usr/bin/env cwl-runner

baseCommand:
- interop_dumpbin
class: CommandLineTool
cwlVersion: v1.0
id: interop_dumpbin
inputs:
- doc: '[0]: Display only a subset of records from each file'
  id: subset
  inputBinding:
    prefix: --subset
  type: boolean
- doc: '[0]: Display file as latest version of the format'
  id: latest_version
  inputBinding:
    prefix: --latest_version
  type: boolean
