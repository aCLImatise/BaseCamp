#!/usr/bin/env cwl-runner

baseCommand:
- novobarcode
class: CommandLineTool
cwlVersion: v1.0
id: novobarcode
inputs:
- doc: ''
  id: novo_barcode
  inputBinding:
    position: 0
  type: string
