#!/usr/bin/env cwl-runner

baseCommand:
- runcon
class: CommandLineTool
cwlVersion: v1.0
id: runcon
inputs:
- doc: Complete security context
  id: context
  inputBinding:
    position: 0
  type: string
- doc: compute process transition context before modifying
  id: compute
  inputBinding:
    prefix: --compute
  type: boolean
- doc: type (for same role as parent)
  id: type
  inputBinding:
    prefix: --type
  type: string
- doc: user identity
  id: user
  inputBinding:
    prefix: --user
  type: string
- doc: role
  id: role
  inputBinding:
    prefix: --role
  type: string
- doc: levelrange
  id: range
  inputBinding:
    prefix: --range
  type: string
