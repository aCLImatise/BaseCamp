#!/usr/bin/env cwl-runner

baseCommand:
- get_cancer-genes.py
class: CommandLineTool
cwlVersion: v1.0
id: get_cancer-genes.py
inputs:
- doc: The name of the organism for which the known fusion genes are downloaded, e.g.
    homo_sapiens, mus_musculus, etc. Default is 'homo_sapiens'.
  id: organism
  inputBinding:
    prefix: --organism
  type: string
- doc: The output directory where the known fusion genes are stored. Default is '.'.
  id: output
  inputBinding:
    prefix: --output
  type: string
