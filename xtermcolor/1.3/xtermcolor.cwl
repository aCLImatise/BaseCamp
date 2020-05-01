#!/usr/bin/env cwl-runner

baseCommand:
- xtermcolor
class: CommandLineTool
cwlVersion: v1.0
id: xtermcolor
inputs:
- doc: Color to convert
  id: color
  inputBinding:
    prefix: --color
  type: string
- doc: Compatibility mode. Defaults to xterm.
  id: compat
  inputBinding:
    prefix: --compat
  type: string
