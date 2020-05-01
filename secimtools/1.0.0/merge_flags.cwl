#!/usr/bin/env cwl-runner

baseCommand:
- merge_flags.py
class: CommandLineTool
cwlVersion: v1.0
id: merge_flags.py
inputs:
- doc: Input any number of flag files that have the same indexes
  id: input
  inputBinding:
    prefix: --input
  type:
    items: string
    type: array
- doc: Filename for input data.
  id: filename
  inputBinding:
    prefix: --filename
  type:
    items: File
    type: array
- doc: Name of the column with unique identifiers in the flag files.
  id: flag_uniqid
  inputBinding:
    prefix: --flagUniqID
  type: string
- doc: Output file
  id: output
  inputBinding:
    prefix: --output
  type: string
