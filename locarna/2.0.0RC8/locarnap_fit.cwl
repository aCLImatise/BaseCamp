#!/usr/bin/env cwl-runner

baseCommand:
- locarnap_fit
class: CommandLineTool
cwlVersion: v1.0
id: locarnap_fit
inputs:
- doc: Fit a signal that is on only once
  id: once_on
  inputBinding:
    prefix: --once-on
  type: boolean
- doc: Show all function values of signal (instead of only ranges)
  id: all_values
  inputBinding:
    prefix: --all-values
  type: boolean
- doc: Input penalty file with sequence of numbers
  id: penalties
  inputBinding:
    prefix: --penalties
  type: File
