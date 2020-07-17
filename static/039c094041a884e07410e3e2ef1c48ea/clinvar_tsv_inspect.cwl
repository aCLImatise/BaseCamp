class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/clinvar_tsv_inspect.cwl
inputs:
- id: work_dir
  doc: Path to working directory
  type: string
  inputBinding:
    prefix: --work-dir
- id: clin_var_tsv
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: inspect
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- clinvar_tsv
- inspect
