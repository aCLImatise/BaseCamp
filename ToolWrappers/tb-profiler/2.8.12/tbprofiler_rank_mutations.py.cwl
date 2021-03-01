class: CommandLineTool
id: tbprofiler_rank_mutations.py.cwl
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
  doc: 'NGS Platform (default: hgvs)'
  type: string?
  inputBinding:
    prefix: --variant-format
- id: in_non_dr
  doc: 'NGS Platform (default: False)'
  type: boolean?
  inputBinding:
    prefix: --non-dr
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- tbprofiler_rank_mutations.py
