#!/usr/bin/env cwl-runner

baseCommand:
- fastspar_reduce
class: CommandLineTool
cwlVersion: v1.0
id: fastspar_reduce
inputs:
- doc: /--correlation_table <path> Correlation input table
  id: r
  inputBinding:
    prefix: -r
  type: boolean
- doc: /--pvalue_table <path> Number of bootstrap samples to generate
  id: p
  inputBinding:
    prefix: -p
  type: boolean
- doc: /--output_prefix <path> Output prefix
  id: o
  inputBinding:
    prefix: -o
  type: boolean
- doc: '/--correlation <float> Absolute (sign is ignored) correlation threshold (default:
    0.1)'
  id: t
  inputBinding:
    prefix: -t
  type: boolean
- doc: '/--pvalue <float> P-value threshold (default: 0.05)'
  id: l
  inputBinding:
    prefix: -l
  type: boolean
- doc: --version Display version information and exit
  id: v
  inputBinding:
    prefix: -v
  type: boolean
