#!/usr/bin/env cwl-runner

baseCommand:
- split_by_p7_barcode
class: CommandLineTool
cwlVersion: v1.0
id: split_by_p7_barcode
inputs:
- doc: ''
  id: f
  inputBinding:
    prefix: -f
  type: boolean
