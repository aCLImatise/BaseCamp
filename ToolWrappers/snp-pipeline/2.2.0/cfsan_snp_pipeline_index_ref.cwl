class: CommandLineTool
id: cfsan_snp_pipeline_index_ref.cwl
inputs:
- id: in_force
  doc: "Force processing even when result files already exist\nand are newer than\
    \ inputs (default: False)"
  type: boolean?
  inputBinding:
    prefix: --force
- id: in_verbose
  doc: 'Verbose message level (0=no info, 5=lots) (default: 1)'
  type: long?
  inputBinding:
    prefix: --verbose
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- cfsan_snp_pipeline
- index_ref
