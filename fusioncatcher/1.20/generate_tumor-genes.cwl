#!/usr/bin/env cwl-runner

baseCommand:
- generate_tumor-genes.py
class: CommandLineTool
cwlVersion: v1.0
id: generate_tumor-genes.py
inputs:
- doc: The name of the organism for which the list of genes is generated, e.g. homo_sapiens,
    mus_musculus, etc. Default is 'homo_sapiens'.
  id: organism
  inputBinding:
    prefix: --organism
  type: string
- doc: The output directory where the list of genes is generated. Default is '.'.
  id: output
  inputBinding:
    prefix: --output
  type: string
