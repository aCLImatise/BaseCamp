class: CommandLineTool
id: tbprofiler_performance.py_print.cwl
inputs:
- id: in_drugs
  doc: "NGS Platform (default: None)\n"
  type: string?
  inputBinding:
    prefix: --drugs
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- tbprofiler_performance.py
- print
