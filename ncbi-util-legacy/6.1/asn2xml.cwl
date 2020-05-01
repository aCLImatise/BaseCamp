#!/usr/bin/env cwl-runner

baseCommand:
- asn2xml
class: CommandLineTool
cwlVersion: v1.0
id: asn2xml
inputs:
- doc: 'Log errors to file named: [File Out]  Optional'
  id: l
  inputBinding:
    prefix: -l
  type: boolean
