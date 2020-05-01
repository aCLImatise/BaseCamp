#!/usr/bin/env cwl-runner

baseCommand:
- nproc
class: CommandLineTool
cwlVersion: v1.0
id: nproc
inputs:
- doc: print the number of installed processors
  id: all
  inputBinding:
    prefix: --all
  type: boolean
- doc: if possible, exclude N processing units
  id: ignore
  inputBinding:
    prefix: --ignore
  type: string
