#!/usr/bin/env cwl-runner

baseCommand:
- tac
class: CommandLineTool
cwlVersion: v1.0
id: tac
inputs:
- doc: the separator before instead of after
  id: before
  inputBinding:
    prefix: --before
  type: string
- doc: the separator as a regular expression
  id: regex
  inputBinding:
    prefix: --regex
  type: long
- doc: use STRING as the separator instead of newline
  id: separator
  inputBinding:
    prefix: --separator
  type: string
