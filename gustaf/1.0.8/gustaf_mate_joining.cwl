#!/usr/bin/env cwl-runner

baseCommand:
- gustaf_mate_joining
class: CommandLineTool
cwlVersion: v1.0
id: gustaf_mate_joining
inputs:
- doc: Disable reverse complementing second input file.
  id: rev_compl
  inputBinding:
    prefix: --revcompl
  type: boolean
- doc: Set verbosity to a minimum.
  id: quiet
  inputBinding:
    prefix: --quiet
  type: boolean
- doc: Enable verbose output.
  id: verbose
  inputBinding:
    prefix: --verbose
  type: boolean
- doc: Enable very verbose output.
  id: very_verbose
  inputBinding:
    prefix: --very-verbose
  type: boolean
