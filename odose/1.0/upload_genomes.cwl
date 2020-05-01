#!/usr/bin/env cwl-runner

baseCommand:
- upload_genomes.py
class: CommandLineTool
cwlVersion: v1.0
id: upload_genomes.py
inputs:
- doc: ''
  id: select_tax_apy
  inputBinding:
    position: 0
  type: string
