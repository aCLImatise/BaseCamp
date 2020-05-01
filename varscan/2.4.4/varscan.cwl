#!/usr/bin/env cwl-runner

baseCommand:
- varscan
class: CommandLineTool
cwlVersion: v1.0
id: varscan
inputs:
- doc: ''
  id: jar
  inputBinding:
    prefix: -jar
  type: string
