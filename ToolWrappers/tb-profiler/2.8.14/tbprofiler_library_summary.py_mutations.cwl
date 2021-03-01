class: CommandLineTool
id: tbprofiler_library_summary.py_mutations.cwl
inputs:
- id: in_drugs
  doc: 'NGS Platform (default: None)'
  type: string?
  inputBinding:
    prefix: --drugs
- id: in_ngs
  doc: 'NGS Platform (default: None)'
  type: string?
  inputBinding:
    prefix: --ngs
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
- mutations
