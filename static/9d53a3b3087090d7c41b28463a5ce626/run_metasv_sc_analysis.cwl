class: CommandLineTool
id: run_metasv_sc_analysis.py.cwl
inputs:
- id: overlap_ratio
  doc: 'Reciprocal overlap ratio (default: 0.5)'
  type: string
  inputBinding:
    prefix: --overlap_ratio
- id: mean_read_length
  doc: 'Mean read length (default: 100)'
  type: string
  inputBinding:
    prefix: --mean_read_length
- id: mean_read_coverage
  doc: 'Mean read coverage (default: 50)'
  type: string
  inputBinding:
    prefix: --mean_read_coverage
- id: min_ins_cov_frac
  doc: 'Minimum read coverage around the insertion breakpoint. (default: 0.5)'
  type: long
  inputBinding:
    prefix: --min_ins_cov_frac
- id: max_ins_cov_frac
  doc: 'Maximum read coverage around the insertion breakpoint. (default: 1.5)'
  type: long
  inputBinding:
    prefix: --max_ins_cov_frac
- id: assembly_max_tools
  doc: 'Skip assembly if more than this many tools support a call (default 1) (default:
    1)'
  type: string
  inputBinding:
    prefix: --assembly_max_tools
- id: other_scale
  doc: 'Parameter to control none SV type resolution (default: 5)'
  type: string
  inputBinding:
    prefix: --other_scale
outputs: []
cwlVersion: v1.1
baseCommand:
- run_metasv_sc_analysis.py
