class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/tb_profiler_reprofile.cwl
inputs:
- id: prefix
  doc: 'Sample prefix (default: tbprofiler)'
  type: string
  inputBinding:
    prefix: --prefix
- id: db
  doc: 'Mutation panel name (default: tbdb)'
  type: string
  inputBinding:
    prefix: --db
- id: external_db
  doc: 'Path to db files prefix (overrides "--db" parameter) (default: None)'
  type: string
  inputBinding:
    prefix: --external_db
- id: json
  doc: JSON output file
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- tb-profiler
- reprofile
