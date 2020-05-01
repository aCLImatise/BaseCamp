#!/usr/bin/env cwl-runner

baseCommand:
- ssu-cmfetch
class: CommandLineTool
cwlVersion: v1.0
id: ssu-cmfetch
inputs:
- doc: ': second cmdline arg is a file of names to retrieve'
  id: f
  inputBinding:
    prefix: -f
  type: boolean
- doc: ': output CM to file <f> instead of stdout'
  id: o
  inputBinding:
    prefix: -o
  type: string
- doc: ': output CM to file named <key>'
  id: o
  inputBinding:
    prefix: -O
  type: boolean
- doc: ': index the <cmfile>, creating <cmfile>.ssi'
  id: index
  inputBinding:
    prefix: --index
  type: boolean
