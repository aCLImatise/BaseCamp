#!/usr/bin/env cwl-runner

baseCommand:
- tbprofiler_analyse_variants.py
class: CommandLineTool
cwlVersion: v1.0
id: tbprofiler_analyse_variants.py
inputs:
- doc: 'NGS Platform (default: None)'
  id: mutations
  inputBinding:
    prefix: --mutations
  type: string
- doc: 'NGS Platform (default: None)'
  id: meta
  inputBinding:
    prefix: --meta
  type: string
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
- doc: 'NGS Platform (default: None)'
  id: drugs
  inputBinding:
    prefix: --drugs
  type: string
