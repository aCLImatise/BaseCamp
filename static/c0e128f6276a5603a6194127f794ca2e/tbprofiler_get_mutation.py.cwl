class: CommandLineTool
id: tbprofiler_get_mutation.py.cwl
inputs:
- id: in_sample_file
  doc: 'NGS Platform (default: None)'
  type: File?
  inputBinding:
    prefix: --sample_file
- id: in_dir
  doc: 'NGS Platform (default: results/)'
  type: string?
  inputBinding:
    prefix: --dir
- id: in_lineage
  doc: 'NGS Platform (default: None)'
  type: string?
  inputBinding:
    prefix: --lineage
- id: in_gene
  doc: NGS Platform
  type: string
  inputBinding:
    position: 0
- id: in_mutation
  doc: NGS Platform
  type: string
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
- tbprofiler_get_mutation.py
