class: CommandLineTool
id: tbprofiler_library_summary.py_mutations.cwl
inputs:
- id: in_drugs
  doc: 'NGS Platform (default: None)'
  type: string
  inputBinding:
    prefix: --drugs
- id: in_ngs
  doc: 'NGS Platform (default: None)'
  type: string
  inputBinding:
    prefix: --ngs
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- tbprofiler_library_summary.py
- mutations
