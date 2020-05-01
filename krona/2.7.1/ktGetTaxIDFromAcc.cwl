#!/usr/bin/env cwl-runner

baseCommand:
- ktGetTaxIDFromAcc
class: CommandLineTool
cwlVersion: v1.0
id: ktgettaxidfromacc
inputs:
- doc: Prepend tax IDs to the original lines (separated by tabs).
  id: p
  inputBinding:
    prefix: -p
  type: boolean
- doc: Append tax IDs to the original lines (separated by tabs).
  id: a
  inputBinding:
    prefix: -a
  type: boolean
