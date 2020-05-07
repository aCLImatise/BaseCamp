class: CommandLineTool
id: tbprofiler_performance.py_analyse_drug.cwl
inputs:
- id: drug
  doc: NGS Platform
  type: string
  inputBinding:
    position: 0
- id: bed
  doc: NGS Platform
  type: string
  inputBinding:
    position: 1
- id: dir
  doc: 'NGS Platform (default: results/)'
  type: string
  inputBinding:
    prefix: --dir
- id: it_ol
  doc: 'NGS Platform (default: False)'
  type: boolean
  inputBinding:
    prefix: --itol
outputs: []
cwlVersion: v1.1
baseCommand:
- tbprofiler_performance.py
- analyse
- drug
