class: CommandLineTool
id: tbprofiler_summarise_mutations.py.cwl
inputs:
- id: samples
  doc: NGS Platform
  type: string
  inputBinding:
    position: 0
- id: dir
  doc: 'NGS Platform (default: results)'
  type: string
  inputBinding:
    prefix: --dir
- id: summary
  doc: 'NGS Platform (default: None)'
  type: string
  inputBinding:
    prefix: --summary
- id: pct
  doc: 'NGS Platform (default: False)'
  type: boolean
  inputBinding:
    prefix: --pct
- id: columns
  doc: 'NGS Platform (default: None)'
  type: string
  inputBinding:
    prefix: --columns
- id: non_dr
  doc: 'NGS Platform (default: False)'
  type: boolean
  inputBinding:
    prefix: --non-dr
outputs: []
cwlVersion: v1.1
baseCommand:
- tbprofiler_summarise_mutations.py
