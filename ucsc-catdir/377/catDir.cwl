#!/usr/bin/env cwl-runner

baseCommand:
- catDir
class: CommandLineTool
cwlVersion: v1.0
id: catdir
inputs:
- doc: Prints file name of non-zero length files
  id: non_z
  inputBinding:
    prefix: -nonz
  type: boolean
