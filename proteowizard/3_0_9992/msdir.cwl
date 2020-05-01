#!/usr/bin/env cwl-runner

baseCommand:
- msdir
class: CommandLineTool
cwlVersion: v1.0
id: msdir
inputs:
- doc: "Size      Last Modified   Name\rNo MS sources found.                     \
    \                      "
  id: type
  inputBinding:
    position: 0
  type: string
- doc: '[ --brief ]        : display brief listing [default]'
  id: b
  inputBinding:
    prefix: -b
  type: boolean
- doc: '[ --detailed ]     : display detailed listing (tabular)'
  id: d
  inputBinding:
    prefix: -d
  type: boolean
- doc: '[ --full ]         : display all source-level metadata'
  id: f
  inputBinding:
    prefix: -f
  type: boolean
