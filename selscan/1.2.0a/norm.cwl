#!/usr/bin/env cwl-runner

baseCommand:
- norm
class: CommandLineTool
cwlVersion: v1.0
id: norm
inputs:
- doc: for downstream analysis of selscan output
  id: a
  inputBinding:
    prefix: -- a
  type: string
