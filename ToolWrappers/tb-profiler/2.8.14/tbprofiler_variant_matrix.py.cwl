class: CommandLineTool
id: tbprofiler_variant_matrix.py.cwl
inputs:
- id: in_samples
  doc: 'NGS Platform (default: None)'
  type: string?
  inputBinding:
    prefix: --samples
- id: in_dir
  doc: 'NGS Platform (default: results/)'
  type: string?
  inputBinding:
    prefix: --dir
- id: in_txt
  doc: 'NGS Platform (default: None)'
  type: string?
  inputBinding:
    prefix: --txt
- id: in_fast_a
  doc: 'NGS Platform (default: None)'
  type: string?
  inputBinding:
    prefix: --fasta
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/tb-profiler:2.8.14--pypyh3252c3a_0
cwlVersion: v1.1
baseCommand:
- tbprofiler_variant_matrix.py
