class: CommandLineTool
id: make_qiime_py_file.py.cwl
inputs:
- id: output_fp
  doc: the output filepath [REQUIRED]
  type: string
  inputBinding:
    prefix: --output_fp
outputs: []
cwlVersion: v1.1
baseCommand:
- make_qiime_py_file.py
