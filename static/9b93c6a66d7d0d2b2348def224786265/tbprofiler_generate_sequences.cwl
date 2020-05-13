class: CommandLineTool
id: tbprofiler_generate_sequences.py.cwl
inputs:
- id: samples
  doc: 'NGS Platform (default: None)'
  type: string
  inputBinding:
    prefix: --samples
- id: dir
  doc: 'NGS Platform (default: vcf/)'
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
- id: non_dr
  doc: 'NGS Platform (default: False)'
  type: boolean
  inputBinding:
    prefix: --non-dr
outputs: []
cwlVersion: v1.1
baseCommand:
- tbprofiler_generate_sequences.py
