#!/usr/bin/env cwl-runner

baseCommand:
- find-repeats.pl
class: CommandLineTool
cwlVersion: v1.0
id: find-repeats.pl
inputs:
- doc: ': Minimum length of repeat region (150).'
  id: min_length
  inputBinding:
    prefix: --min-length
  type: boolean
- doc: ': Minimum PID of repeat region (90).'
  id: min_pid
  inputBinding:
    prefix: --min-pid
  type: boolean
- doc: ': Keep around temporary nucmer/coords files (no).'
  id: keep_temp
  inputBinding:
    prefix: --keep-temp
  type: boolean
