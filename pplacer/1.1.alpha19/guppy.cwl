#!/usr/bin/env cwl-runner

baseCommand:
- guppy
class: CommandLineTool
cwlVersion: v1.0
id: guppy
inputs:
- doc: Print a list of the available commands.
  id: cmds
  inputBinding:
    prefix: --cmds
  type: boolean
- doc: Run the provided batch file of guppy commands
  id: batch
  inputBinding:
    prefix: --batch
  type: boolean
- doc: Don't write messages to stdout (unless explicitly requested).
  id: quiet
  inputBinding:
    prefix: --quiet
  type: boolean
- doc: Display this list of options and subcommands
  id: help
  inputBinding:
    prefix: -help
  type: boolean
