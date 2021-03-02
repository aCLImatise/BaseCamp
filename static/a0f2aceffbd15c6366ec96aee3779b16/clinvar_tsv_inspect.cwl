class: CommandLineTool
id: clinvar_tsv_inspect.cwl
inputs:
- id: in_work_dir
  doc: Path to working directory
  type: File?
  inputBinding:
    prefix: --work-dir
- id: in_clin_var_tsv
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_inspect
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- clinvar_tsv
- inspect
