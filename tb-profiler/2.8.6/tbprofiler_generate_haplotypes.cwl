#!/usr/bin/env cwl-runner

baseCommand:
- tbprofiler_generate_haplotypes.py
class: CommandLineTool
cwlVersion: v1.0
id: tbprofiler_generate_haplotypes.py
inputs:
- doc: 'NGS Platform (default: None)'
  id: samples
  inputBinding:
    prefix: --samples
  type: string
- doc: 'NGS Platform (default: results/)'
  id: dir
  inputBinding:
    prefix: --dir
  type: string
- doc: 'NGS Platform (default: tbdb)'
  id: db
  inputBinding:
    prefix: --db
  type: string
- doc: 'NGS Platform (default: hgvs)'
  id: variant_format
  inputBinding:
    prefix: --variant-format
  type: string
- doc: 'NGS Platform (default: False)'
  id: non_dr
  inputBinding:
    prefix: --non-dr
  type: boolean
