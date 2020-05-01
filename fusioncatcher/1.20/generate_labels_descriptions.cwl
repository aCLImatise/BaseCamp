#!/usr/bin/env cwl-runner

baseCommand:
- generate_labels_descriptions.py
class: CommandLineTool
cwlVersion: v1.0
id: generate_labels_descriptions.py
inputs:
- doc: The output directory where the descriptions of labels is generated. Default
    is '.'.
  id: output
  inputBinding:
    prefix: --output
  type: string
