#!/usr/bin/env cwl-runner

baseCommand:
- AC
class: CommandLineTool
cwlVersion: v1.0
id: ac
inputs:
- doc: 'reference file ("-rm" are loaded here),     '
  id: r
  inputBinding:
    prefix: -r
  type: File
