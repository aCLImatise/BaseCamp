class: CommandLineTool
id: ../../../tbprofiler_performance.py_analyse.cwl
inputs:
- id: in_dir
  doc: 'NGS Platform (default: results/)'
  type: string
  inputBinding:
    prefix: --dir
- id: in_it_ol
  doc: 'NGS Platform (default: False)'
  type: boolean
  inputBinding:
    prefix: --itol
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- tbprofiler_performance.py
- analyse
