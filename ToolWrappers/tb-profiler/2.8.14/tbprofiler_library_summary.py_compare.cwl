class: CommandLineTool
id: tbprofiler_library_summary.py_compare.cwl
inputs:
- id: in_drugs
  doc: 'NGS Platform (default: None)'
  type: string?
  inputBinding:
    prefix: --drugs
- id: in_prefix_one
  doc: NGS Platform
  type: long
  inputBinding:
    position: 0
- id: in_prefix_two
  doc: NGS Platform
  type: long
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/tb-profiler:2.8.14--pypyh3252c3a_0
cwlVersion: v1.1
baseCommand:
- tbprofiler_library_summary.py
- compare
