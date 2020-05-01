#!/usr/bin/env cwl-runner

baseCommand:
- axt_extract_ranges.py
class: CommandLineTool
cwlVersion: v1.0
id: axt_extract_ranges.py
inputs:
- doc: '=10: Minimum length (columns) required for alignment to be output'
  id: min_cols
  inputBinding:
    prefix: --mincols
  type: boolean
