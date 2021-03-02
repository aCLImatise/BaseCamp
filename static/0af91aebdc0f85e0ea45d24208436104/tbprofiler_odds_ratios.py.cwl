class: CommandLineTool
id: tbprofiler_odds_ratios.py.cwl
inputs:
- id: in_samples
  doc: 'NGS Platform (default: None)'
  type: string?
  inputBinding:
    prefix: --samples
- id: in_dir
  doc: 'NGS Platform (default: results/)'
  type: string?
  inputBinding:
    prefix: --dir
- id: in_db
  doc: 'NGS Platform (default: tbdb)'
  type: string?
  inputBinding:
    prefix: --db
- id: in_variant_format
  doc: "NGS Platform (default: hgvs)\n"
  type: string?
  inputBinding:
    prefix: --variant-format
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/tb-profiler:2.8.14--pypyh3252c3a_0
cwlVersion: v1.1
baseCommand:
- tbprofiler_odds_ratios.py
