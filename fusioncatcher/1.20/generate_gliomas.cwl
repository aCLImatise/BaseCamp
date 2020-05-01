#!/usr/bin/env cwl-runner

baseCommand:
- generate_gliomas.py
class: CommandLineTool
cwlVersion: v1.0
id: generate_gliomas.py
inputs:
- doc: The name of the organism for which the list of allowed candidate fusion genes
    is generated, e.g. homo_sapiens, mus_musculus, etc. Default is 'homo_sapiens'.
  id: organism
  inputBinding:
    prefix: --organism
  type: string
- doc: The output directory where the list of allowed candidate fusion genes is generated.
    Default is '.'.
  id: output
  inputBinding:
    prefix: --output
  type: string
- doc: If set then it filters out the known fusion genes where the (i) genes are fully
    overlapping, or (ii) the genes are partially overlapping and are on the same strand.
    Default is 'False'.
  id: skip_filter_overlap
  inputBinding:
    prefix: --skip-filter-overlap
  type: boolean
