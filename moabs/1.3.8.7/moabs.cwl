#!/usr/bin/env cwl-runner

baseCommand:
- moabs
class: CommandLineTool
cwlVersion: v1.0
id: moabs
inputs:
- doc: <str>   input files.
  id: i
  inputBinding:
    prefix: -i
  type: boolean
- doc: <str>   configuration file.
  id: cf
  inputBinding:
    prefix: --cf
  type: boolean
- doc: <str>   overwrite definitions in configuration file. --def key=value
  id: def
  inputBinding:
    prefix: --def
  type: boolean
- doc: <boleen>        verbose output  [0 or 1, default 0]
  id: v
  inputBinding:
    prefix: -v
  type: boolean
