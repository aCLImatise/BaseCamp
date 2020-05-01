#!/usr/bin/env cwl-runner

baseCommand:
- filter-stage-2.prl
class: CommandLineTool
cwlVersion: v1.0
id: filter-stage-2.prl
inputs:
- doc: The RepeatMasker output file. It can either be a .cat file or a .out file,
    but a .out file is preferred.
  id: cat
  inputBinding:
    prefix: --cat
  type: boolean
- doc: The number of times a sequence must appear for it to be reported.
  id: thresh
  inputBinding:
    prefix: --thresh
  type: boolean
