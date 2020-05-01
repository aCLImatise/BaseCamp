#!/usr/bin/env cwl-runner

baseCommand:
- run_metasv_sc_analysis.py
class: CommandLineTool
cwlVersion: v1.0
id: run_metasv_sc_analysis.py
inputs:
- doc: 'Reciprocal overlap ratio (default: 0.5)'
  id: overlap_ratio
  inputBinding:
    prefix: --overlap_ratio
  type: string
- doc: 'Mean read length (default: 100)'
  id: mean_read_length
  inputBinding:
    prefix: --mean_read_length
  type: string
- doc: 'Mean read coverage (default: 50)'
  id: mean_read_coverage
  inputBinding:
    prefix: --mean_read_coverage
  type: string
- doc: 'Minimum read coverage around the insertion breakpoint. (default: 0.5)'
  id: min_ins_cov_frac
  inputBinding:
    prefix: --min_ins_cov_frac
  type: long
- doc: 'Maximum read coverage around the insertion breakpoint. (default: 1.5)'
  id: max_ins_cov_frac
  inputBinding:
    prefix: --max_ins_cov_frac
  type: long
- doc: 'Skip assembly if more than this many tools support a call (default 1) (default:
    1)'
  id: assembly_max_tools
  inputBinding:
    prefix: --assembly_max_tools
  type: string
- doc: 'Parameter to control none SV type resolution (default: 5)'
  id: other_scale
  inputBinding:
    prefix: --other_scale
  type: string
