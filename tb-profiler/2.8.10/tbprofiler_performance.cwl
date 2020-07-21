class: CommandLineTool
id: ../../../tbprofiler_performance.py_analyse_bed.cwl
inputs:
- id: dir
  doc: ''
  type: string
  inputBinding:
    prefix: --dir
- id: it_ol
  doc: ''
  type: boolean
  inputBinding:
    prefix: --itol
- id: tb_profiler_performance_do_tpy
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: analyse
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: drug
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: bed
  doc: ''
  type: string
  inputBinding:
    position: 3
outputs: []
cwlVersion: v1.1
baseCommand:
- tbprofiler_performance.py
- analyse
- bed
