class: CommandLineTool
id: tbprofiler_performance.py_calculate.cwl
inputs:
- id: in_dir
  doc: 'NGS Platform (default: results/)'
  type: string?
  inputBinding:
    prefix: --dir
- id: in_miss
  doc: "Fraction of gene missing to call gDST as missing\n(default: 0.1)"
  type: double?
  inputBinding:
    prefix: --miss
- id: in_drugs
  doc: 'NGS Platform (default: None)'
  type: string?
  inputBinding:
    prefix: --drugs
- id: in_samples
  doc: NGS Platform
  type: string
  inputBinding:
    position: 0
- id: in_dst
  doc: NGS Platform
  type: string
  inputBinding:
    position: 1
- id: in_bed
  doc: NGS Platform
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/tb-profiler:2.8.14--pypyh3252c3a_0
cwlVersion: v1.1
baseCommand:
- tbprofiler_performance.py
- calculate
