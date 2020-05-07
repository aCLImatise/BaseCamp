class: CommandLineTool
id: pathogen_profiler_gather.py.cwl
inputs:
- id: samples
  doc: 'NGS Platform (default: None)'
  type: string
  inputBinding:
    prefix: --samples
- id: dir
  doc: 'NGS Platform (default: pp-results)'
  type: string
  inputBinding:
    prefix: --dir
- id: matrix
  doc: 'NGS Platform (default: None)'
  type: string
  inputBinding:
    prefix: --matrix
- id: fast_a
  doc: 'NGS Platform (default: None)'
  type: string
  inputBinding:
    prefix: --fasta
- id: summary
  doc: 'NGS Platform (default: None)'
  type: string
  inputBinding:
    prefix: --summary
- id: it_ol
  doc: 'NGS Platform (default: False)'
  type: boolean
  inputBinding:
    prefix: --itol
- id: pct
  doc: 'NGS Platform (default: False)'
  type: boolean
  inputBinding:
    prefix: --pct
outputs: []
cwlVersion: v1.1
baseCommand:
- pathogen-profiler-gather.py
