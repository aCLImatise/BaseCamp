#!/usr/bin/env cwl-runner

baseCommand:
- mendelscan
class: CommandLineTool
cwlVersion: v1.0
id: mendelscan
inputs:
- doc: ''
  id: jar
  inputBinding:
    prefix: -jar
  type: string
