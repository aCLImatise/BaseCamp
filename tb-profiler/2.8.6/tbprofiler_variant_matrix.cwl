class: CommandLineTool
id: tbprofiler_variant_matrix.py.cwl
inputs:
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
- id: txt
  doc: 'NGS Platform (default: None)'
  type: string
  inputBinding:
    prefix: --txt
- id: fast_a
  doc: 'NGS Platform (default: None)'
  type: string
  inputBinding:
    prefix: --fasta
outputs: []
cwlVersion: v1.1
baseCommand:
- tbprofiler_variant_matrix.py
