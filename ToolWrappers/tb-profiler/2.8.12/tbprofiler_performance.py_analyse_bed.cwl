class: CommandLineTool
id: tbprofiler_performance.py_analyse_bed.cwl
inputs:
- id: in_it_ol
  doc: ''
  type: boolean?
  inputBinding:
    prefix: --itol
- id: in_dir
  doc: ''
  type: string?
  inputBinding:
    prefix: --dir
- id: in_tb_profiler_performance_do_tpy
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_analyse
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_drug
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_bed
  doc: ''
  type: string
  inputBinding:
    position: 3
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- tbprofiler_performance.py
- analyse
- bed
