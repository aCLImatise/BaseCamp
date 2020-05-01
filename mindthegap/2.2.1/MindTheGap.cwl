#!/usr/bin/env cwl-runner

baseCommand:
- MindTheGap
class: CommandLineTool
cwlVersion: v1.0
id: mindthegap
inputs:
- doc: ':    display current version'
  id: version
  inputBinding:
    prefix: -version
  type: boolean
