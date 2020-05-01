#!/usr/bin/env cwl-runner

baseCommand:
- maf_extract_chrom_ranges.py
class: CommandLineTool
cwlVersion: v1.0
id: maf_extract_chrom_ranges.py
inputs:
- doc: '=10: Minimum length (columns) required for alignment to be output'
  id: min_cols
  inputBinding:
    prefix: --mincols
  type: boolean
- doc: ': Prefix'
  id: prefix
  inputBinding:
    prefix: --prefix
  type: string
