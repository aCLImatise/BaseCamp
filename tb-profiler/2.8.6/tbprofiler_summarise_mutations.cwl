#!/usr/bin/env cwl-runner

baseCommand:
- tbprofiler_summarise_mutations.py
class: CommandLineTool
cwlVersion: v1.0
id: tbprofiler_summarise_mutations.py
inputs:
- doc: NGS Platform
  id: samples
  inputBinding:
    position: 0
  type: string
- doc: 'NGS Platform (default: results)'
  id: dir
  inputBinding:
    prefix: --dir
  type: string
- doc: 'NGS Platform (default: None)'
  id: summary
  inputBinding:
    prefix: --summary
  type: string
- doc: 'NGS Platform (default: False)'
  id: pct
  inputBinding:
    prefix: --pct
  type: boolean
- doc: 'NGS Platform (default: None)'
  id: columns
  inputBinding:
    prefix: --columns
  type: string
- doc: 'NGS Platform (default: False)'
  id: non_dr
  inputBinding:
    prefix: --non-dr
  type: boolean
