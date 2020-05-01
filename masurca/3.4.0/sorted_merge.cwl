#!/usr/bin/env cwl-runner

baseCommand:
- sorted_merge
class: CommandLineTool
cwlVersion: v1.0
id: sorted_merge
inputs:
- doc: Key (1 base column number) for sorting (1)
  id: key
  inputBinding:
    prefix: --key
  type: string
- doc: Output file instead of stdout (/dev/fd/1)
  id: output
  inputBinding:
    prefix: --output
  type: File
- doc: Numerical sort (false)
  id: numerical
  inputBinding:
    prefix: --numerical
  type: boolean
