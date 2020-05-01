#!/usr/bin/env cwl-runner

baseCommand:
- pathogen-profiler-gather.py
class: CommandLineTool
cwlVersion: v1.0
id: pathogen-profiler-gather.py
inputs:
- doc: 'NGS Platform (default: None)'
  id: samples
  inputBinding:
    prefix: --samples
  type: string
- doc: 'NGS Platform (default: pp-results)'
  id: dir
  inputBinding:
    prefix: --dir
  type: string
- doc: 'NGS Platform (default: None)'
  id: matrix
  inputBinding:
    prefix: --matrix
  type: string
- doc: 'NGS Platform (default: None)'
  id: fast_a
  inputBinding:
    prefix: --fasta
  type: string
- doc: 'NGS Platform (default: None)'
  id: summary
  inputBinding:
    prefix: --summary
  type: string
- doc: 'NGS Platform (default: False)'
  id: it_ol
  inputBinding:
    prefix: --itol
  type: boolean
- doc: 'NGS Platform (default: False)'
  id: pct
  inputBinding:
    prefix: --pct
  type: boolean
