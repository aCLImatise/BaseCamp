class: CommandLineTool
id: tbprofiler_get_mutation.py.cwl
inputs:
- id: in_dir
  doc: ''
  type: string
  inputBinding:
    prefix: --dir
- id: in_sample_file
  doc: ''
  type: File
  inputBinding:
    prefix: --sample_file
- id: in_gene
  doc: NGS Platform
  type: string
  inputBinding:
    position: 0
- id: in_mutation
  doc: NGS Platform
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- tbprofiler_get_mutation.py
