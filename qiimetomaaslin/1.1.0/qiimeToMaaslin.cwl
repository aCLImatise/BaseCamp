#!/usr/bin/env cwl-runner

baseCommand:
- qiimeToMaaslin.py
class: CommandLineTool
cwlVersion: v1.0
id: qiimetomaaslin.py
inputs:
- doc: Don't normalize data values by column sums
  id: n
  inputBinding:
    prefix: -n
  type: boolean
- doc: String representing missing metadata values
  id: s
  inputBinding:
    prefix: -s
  type: string
- doc: Per-column quality control, minimum fraction of maximum value
  id: m
  inputBinding:
    prefix: -m
  type: long
- doc: Depth of taxonomy to be computed, negative=from right, 0=no change
  id: t
  inputBinding:
    prefix: -t
  type: string
- doc: Output only leaves, not complete taxonomy
  id: l
  inputBinding:
    prefix: -l
  type: boolean
- doc: File from which sample IDs to exclude are read
  id: x
  inputBinding:
    prefix: -x
  type: string
