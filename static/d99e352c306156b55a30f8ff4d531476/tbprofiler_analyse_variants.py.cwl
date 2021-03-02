class: CommandLineTool
id: tbprofiler_analyse_variants.py.cwl
inputs:
- id: in_mutations
  doc: 'NGS Platform (default: None)'
  type: string?
  inputBinding:
    prefix: --mutations
- id: in_meta
  doc: 'NGS Platform (default: None)'
  type: string?
  inputBinding:
    prefix: --meta
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
- id: in_db
  doc: 'NGS Platform (default: tbdb)'
  type: string?
  inputBinding:
    prefix: --db
- id: in_drugs
  doc: 'NGS Platform (default: None)'
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
- tbprofiler_analyse_variants.py
