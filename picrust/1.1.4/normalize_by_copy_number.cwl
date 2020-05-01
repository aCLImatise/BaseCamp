#!/usr/bin/env cwl-runner

baseCommand:
- normalize_by_copy_number.py
class: CommandLineTool
cwlVersion: v1.0
id: normalize_by_copy_number.py
inputs:
- doc: the input otu table filepath in biom format [REQUIRED]
  id: input_otu_fp
  inputBinding:
    prefix: --input_otu_fp
  type: string
- doc: the output otu table filepath in biom format [REQUIRED]
  id: output_otu_fp
  inputBinding:
    prefix: --output_otu_fp
  type: string
