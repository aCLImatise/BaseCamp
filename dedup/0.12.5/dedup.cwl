#!/usr/bin/env cwl-runner

baseCommand:
- dedup
class: CommandLineTool
cwlVersion: v1.0
id: dedup
inputs:
- doc: the input file if this option is not specified, the input is expected to be
    piped in
  id: input
  inputBinding:
    prefix: --input
  type: string
- doc: the input only contains merged reads. If this option is specified read names
    are not examined for prefixes. Both the start and end of the aligment are considered
    for all reads.
  id: merged
  inputBinding:
    prefix: --merged
  type: boolean
- doc: the output folder. Has to be specified if input is set.
  id: output
  inputBinding:
    prefix: --output
  type: string
- doc: Do not automatically sort the output
  id: unsorted
  inputBinding:
    prefix: --unsorted
  type: boolean
