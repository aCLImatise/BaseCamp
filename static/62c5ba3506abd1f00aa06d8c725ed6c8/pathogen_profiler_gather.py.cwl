class: CommandLineTool
id: pathogen_profiler_gather.py.cwl
inputs:
- id: in_samples
  doc: 'NGS Platform (default: None)'
  type: string?
  inputBinding:
    prefix: --samples
- id: in_dir
  doc: 'NGS Platform (default: pp-results)'
  type: string?
  inputBinding:
    prefix: --dir
- id: in_matrix
  doc: 'NGS Platform (default: None)'
  type: string?
  inputBinding:
    prefix: --matrix
- id: in_fast_a
  doc: 'NGS Platform (default: None)'
  type: string?
  inputBinding:
    prefix: --fasta
- id: in_summary
  doc: 'NGS Platform (default: None)'
  type: string?
  inputBinding:
    prefix: --summary
- id: in_it_ol
  doc: 'NGS Platform (default: False)'
  type: boolean?
  inputBinding:
    prefix: --itol
- id: in_pct
  doc: 'NGS Platform (default: False)'
  type: boolean?
  inputBinding:
    prefix: --pct
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- pathogen-profiler-gather.py
