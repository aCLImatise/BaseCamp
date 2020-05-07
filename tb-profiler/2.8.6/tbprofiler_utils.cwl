class: CommandLineTool
id: tbprofiler_utils.py_gbcf_lineage.cwl
inputs:
- id: bcf
  doc: Sample prefix
  type: string
  inputBinding:
    position: 0
- id: prefix
  doc: 'Sample prefix (default: tbprofiler)'
  type: string
  inputBinding:
    prefix: --prefix
- id: out_fmt
  doc: 'Output format (default: json)'
  type: string
  inputBinding:
    prefix: --outfmt
- id: db
  doc: 'Full path to mutation database json file to use (default: TBProfiler panel)
    (default: drdb_v2)'
  type: string
  inputBinding:
    prefix: --db
outputs: []
cwlVersion: v1.1
baseCommand:
- tbprofiler_utils.py
- gbcf_lineage
