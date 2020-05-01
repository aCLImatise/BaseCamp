#!/usr/bin/env cwl-runner

baseCommand:
- maf_region_coverage_by_src.py
class: CommandLineTool
cwlVersion: v1.0
id: maf_region_coverage_by_src.py
inputs:
- doc: Use this src for all intervals
  id: src
  inputBinding:
    prefix: --src
  type: string
- doc: Prepend this to each src before lookup
  id: prefix
  inputBinding:
    prefix: --prefix
  type: string
