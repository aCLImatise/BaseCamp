#!/usr/bin/env cwl-runner

baseCommand:
- _mhcflurry-cluster-worker-entry-point
class: CommandLineTool
cwlVersion: v1.0
id: _mhcflurry-cluster-worker-entry-point
inputs:
- doc: ''
  id: entry
  inputBinding:
    position: 0
  type: string
- doc: ''
  id: point
  inputBinding:
    position: 1
  type: string
- doc: ''
  id: for
  inputBinding:
    position: 2
  type: string
- doc: ''
  id: cluster
  inputBinding:
    position: 3
  type: string
- doc: ''
  id: workers
  inputBinding:
    position: 4
  type: string
