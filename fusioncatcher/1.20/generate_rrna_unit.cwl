#!/usr/bin/env cwl-runner

baseCommand:
- generate_rrna_unit.py
class: CommandLineTool
cwlVersion: v1.0
id: generate_rrna_unit.py
inputs:
- doc: The name of the organism for which the ribosomal DNA complete repeating unit
    is generated, e.g. homo_sapiens, mus_musculus, etc. Default is 'homo_sapiens'.
  id: organism
  inputBinding:
    prefix: --organism
  type: string
- doc: The output directory where the ribosomal DNA complete repeating unit is generated.
    Default is '.'.
  id: output
  inputBinding:
    prefix: --output
  type: string
