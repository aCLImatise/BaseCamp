class: CommandLineTool
id: tbprofiler_analyse_variants.py.cwl
inputs:
- id: mutations
  doc: 'NGS Platform (default: None)'
  type: string
  inputBinding:
    prefix: --mutations
- id: meta
  doc: 'NGS Platform (default: None)'
  type: string
  inputBinding:
    prefix: --meta
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
- id: drugs
  doc: 'NGS Platform (default: None)'
  type: string
  inputBinding:
    prefix: --drugs
outputs: []
cwlVersion: v1.1
baseCommand:
- tbprofiler_analyse_variants.py
