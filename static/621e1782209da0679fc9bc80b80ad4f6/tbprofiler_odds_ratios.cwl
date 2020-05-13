class: CommandLineTool
id: tbprofiler_odds_ratios.py.cwl
inputs:
- id: meta
  doc: Meta data
  type: string
  inputBinding:
    position: 0
- id: samples
  doc: 'NGS Platform (default: None)'
  type: string
  inputBinding:
    prefix: --samples
- id: dir
  doc: 'NGS Platform (default: results/)'
  type: string
  inputBinding:
    prefix: --dir
- id: db
  doc: 'NGS Platform (default: tbdb)'
  type: string
  inputBinding:
    prefix: --db
- id: variant_format
  doc: 'NGS Platform (default: hgvs)'
  type: string
  inputBinding:
    prefix: --variant-format
outputs: []
cwlVersion: v1.1
baseCommand:
- tbprofiler_odds_ratios.py
