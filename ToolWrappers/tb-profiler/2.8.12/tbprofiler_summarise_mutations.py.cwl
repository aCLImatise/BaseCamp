class: CommandLineTool
id: tbprofiler_summarise_mutations.py.cwl
inputs:
- id: in_dir
  doc: 'NGS Platform (default: results)'
  type: string
  inputBinding:
    prefix: --dir
- id: in_summary
  doc: 'NGS Platform (default: None)'
  type: string
  inputBinding:
    prefix: --summary
- id: in_pct
  doc: 'NGS Platform (default: False)'
  type: boolean
  inputBinding:
    prefix: --pct
- id: in_columns
  doc: 'NGS Platform (default: None)'
  type: string
  inputBinding:
    prefix: --columns
- id: in_non_dr
  doc: 'NGS Platform (default: False)'
  type: boolean
  inputBinding:
    prefix: --non-dr
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- tbprofiler_summarise_mutations.py
