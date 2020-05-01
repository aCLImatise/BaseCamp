#!/usr/bin/env cwl-runner

baseCommand:
- tbprofiler_variant_matrix.py
class: CommandLineTool
cwlVersion: v1.0
id: tbprofiler_variant_matrix.py
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
- doc: 'NGS Platform (default: None)'
  id: txt
  inputBinding:
    prefix: --txt
  type: string
- doc: 'NGS Platform (default: None)'
  id: fast_a
  inputBinding:
    prefix: --fasta
  type: string
