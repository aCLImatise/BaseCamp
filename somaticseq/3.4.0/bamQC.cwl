#!/usr/bin/env cwl-runner

baseCommand:
- bamQC.py
class: CommandLineTool
cwlVersion: v1.0
id: bamqc.py
inputs:
- doc: ''
  id: bam
  inputBinding:
    prefix: -bam
  type: string
- doc: ''
  id: max_l
  inputBinding:
    prefix: -maxl
  type: long
