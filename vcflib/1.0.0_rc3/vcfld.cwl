#!/usr/bin/env cwl-runner

baseCommand:
- vcfld
class: CommandLineTool
cwlVersion: v1.0
id: vcfld
inputs:
- doc: "goes here       -'                "
  id: your
  inputBinding:
    prefix: '-     Your'
  type: string
