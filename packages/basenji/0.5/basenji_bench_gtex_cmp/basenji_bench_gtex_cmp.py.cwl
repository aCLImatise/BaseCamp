class: CommandLineTool
id: basenji_bench_gtex_cmp.py.cwl
inputs:
- id: in_alt
  doc: 'Statistical test alternative [Default: two-sided]'
  type: string?
  inputBinding:
    prefix: --alt
- id: in_hue
  doc: 'Scatter plot variant number as hue [Default: False]'
  type: boolean?
  inputBinding:
    prefix: --hue
- id: in_stats
  doc: 'Minimum variants to include tissue [Default: 0]'
  type: long?
  inputBinding:
    prefix: --stats
- id: in_bench_two_dir
  doc: ''
  type: long
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/basenji:0.5--py_0
cwlVersion: v1.1
baseCommand:
- basenji_bench_gtex_cmp.py
