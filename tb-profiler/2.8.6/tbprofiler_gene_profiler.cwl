class: CommandLineTool
id: tbprofiler_gene_profiler.py_collate.cwl
inputs:
- id: dir
  doc: 'Result directory (default: .)'
  type: string
  inputBinding:
    prefix: --dir
- id: suffix
  doc: 'Output file suffix (default: .results.json)'
  type: string
  inputBinding:
    prefix: --suffix
outputs: []
cwlVersion: v1.1
baseCommand:
- tbprofiler_gene_profiler.py
- collate
