class: CommandLineTool
id: tb_profiler_reprofile.cwl
inputs:
- id: in_prefix
  doc: 'Sample prefix (default: tbprofiler)'
  type: string?
  inputBinding:
    prefix: --prefix
- id: in_db
  doc: 'Mutation panel name (default: tbdb)'
  type: string?
  inputBinding:
    prefix: --db
- id: in_external_db
  doc: "Path to db files prefix (overrides \"--db\" parameter)\n(default: None)"
  type: File?
  inputBinding:
    prefix: --external_db
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- tb-profiler
- reprofile
