#!/usr/bin/env cwl-runner

baseCommand:
- hp_demo
class: CommandLineTool
cwlVersion: v1.0
id: hp_demo
inputs:
- doc: 'Output directory (default: .)'
  id: outdir
  inputBinding:
    prefix: --outdir
  type: string
- doc: 'Does not run entire demo, only pulls the reference files (default: False)'
  id: ref_only
  inputBinding:
    prefix: --refonly
  type: boolean
