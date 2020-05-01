#!/usr/bin/env cwl-runner

baseCommand:
- map
class: CommandLineTool
cwlVersion: v1.0
id: map
inputs:
- doc: Encoding of input files (default "ISO-8859-1")
  id: from
  inputBinding:
    prefix: --from
  type: string
- doc: Lists available character sets and their alias names.
  id: list
  inputBinding:
    prefix: --list
  type: boolean
- doc: s  Encoding of output files (default "ISO-8859-1")
  id: to
  inputBinding:
    prefix: --to
  type: boolean
