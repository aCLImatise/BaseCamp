#!/usr/bin/env cwl-runner

baseCommand:
- id
class: CommandLineTool
cwlVersion: v1.0
id: id
inputs:
- doc: ignore, for compatibility with other versions
  id: a
  inputBinding:
    prefix: -a
  type: boolean
- doc: print only the security context of the process
  id: context
  inputBinding:
    prefix: --context
  type: boolean
- doc: print only the effective group ID
  id: group
  inputBinding:
    prefix: --group
  type: boolean
- doc: print all group IDs
  id: groups
  inputBinding:
    prefix: --groups
  type: boolean
- doc: print a name instead of a number, for -ugG
  id: name
  inputBinding:
    prefix: --name
  type: boolean
- doc: print the real ID instead of the effective ID, with -ugG
  id: real
  inputBinding:
    prefix: --real
  type: boolean
- doc: print only the effective user ID
  id: user
  inputBinding:
    prefix: --user
  type: boolean
- doc: delimit entries with NUL characters, not whitespace; not permitted in default
    format
  id: zero
  inputBinding:
    prefix: --zero
  type: boolean
