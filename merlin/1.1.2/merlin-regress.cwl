#!/usr/bin/env cwl-runner

baseCommand:
- merlin-regress
class: CommandLineTool
cwlVersion: v1.0
id: merlin-regress
inputs:
- doc: '[0.00], --variance [1.00], --heritability [0.50],'
  id: mean
  inputBinding:
    prefix: --mean
  type: boolean
- doc: '[1.00]'
  id: test_retest
  inputBinding:
    prefix: --testRetest
  type: boolean
