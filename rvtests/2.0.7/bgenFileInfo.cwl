#!/usr/bin/env cwl-runner

baseCommand:
- bgenFileInfo
class: CommandLineTool
cwlVersion: v1.0
id: bgenfileinfo
inputs:
- doc: ': Input BGEN File'
  id: in_bg_en
  inputBinding:
    prefix: --inBgen
  type: boolean
- doc: ': Input Sample File'
  id: in_sample
  inputBinding:
    prefix: --inSample
  type: boolean
