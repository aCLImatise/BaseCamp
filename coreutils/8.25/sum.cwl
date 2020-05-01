#!/usr/bin/env cwl-runner

baseCommand:
- sum
class: CommandLineTool
cwlVersion: v1.0
id: sum
inputs:
- doc: use BSD sum algorithm, use 1K blocks
  id: r
  inputBinding:
    prefix: -r
  type: boolean
- doc: use System V sum algorithm, use 512 bytes blocks
  id: sysv
  inputBinding:
    prefix: --sysv
  type: boolean
