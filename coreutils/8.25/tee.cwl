#!/usr/bin/env cwl-runner

baseCommand:
- tee
class: CommandLineTool
cwlVersion: v1.0
id: tee
inputs:
- doc: to the given FILEs, do not overwrite
  id: append
  inputBinding:
    prefix: --append
  type: string
- doc: interrupt signals
  id: ignore_interrupts
  inputBinding:
    prefix: --ignore-interrupts
  type: string
- doc: diagnose errors writing to non pipes
  id: p
  inputBinding:
    prefix: -p
  type: boolean
- doc: '[=MODE]   set behavior on write error.  See MODE below'
  id: output_error
  inputBinding:
    prefix: --output-error
  type: boolean
