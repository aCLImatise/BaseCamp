#!/usr/bin/env cwl-runner

baseCommand:
- ssu-esl-cluster
class: CommandLineTool
cwlVersion: v1.0
id: ssu-esl-cluster
inputs:
- doc: ': field to read as query name, 1..n  [8]  (n>0)'
  id: q
  inputBinding:
    prefix: -q
  type: string
- doc: ': field to read as target name, 1..n  [5]  (n>0)'
  id: t
  inputBinding:
    prefix: -t
  type: string
- doc: ': field to read as distance value, 1..n  [1]  (n>0)'
  id: v
  inputBinding:
    prefix: -v
  type: string
- doc: ': clustering threshold  [1e-4]  (x>0)'
  id: x
  inputBinding:
    prefix: -x
  type: string
